AUI().use(
	'liferay-service', 'json', 'async-queue',
	function(A) {
		var states = [['AL', 'Alabama', 'The Heart of Dixie'], ['AK', 'Alaska', 'The Land of the Midnight Sun'], ['AZ', 'Arizona', 'The Grand Canyon State'], ['AR', 'Arkansas', 'The Natural State'], ['CA', 'California', 'The Golden State'], ['CO', 'Colorado', 'The Mountain State'], ['CT', 'Connecticut', 'The Constitution State'], ['DE', 'Delaware', 'The First State'], ['DC', 'District of Columbia', "The Nation's Capital"], ['FL', 'Florida', 'The Sunshine State'], ['GA', 'Georgia', 'The Peach State'], ['HI', 'Hawaii', 'The Aloha State'], ['ID', 'Idaho', 'Famous Potatoes'], ['IL', 'Illinois', 'The Prairie State'], ['IN', 'Indiana', 'The Hospitality State'], ['IA', 'Iowa', 'The Corn State'], ['KS', 'Kansas', 'The Sunflower State'], ['KY', 'Kentucky', 'The Bluegrass State'], ['LA', 'Louisiana', 'The Bayou State'], ['ME', 'Maine', 'The Pine Tree State'], ['MD', 'Maryland', 'Chesapeake State'], ['MA', 'Massachusetts', 'The Spirit of America'], ['MI', 'Michigan', 'Great Lakes State'], ['MN', 'Minnesota', 'North Star State'], ['MS', 'Mississippi', 'Magnolia State'], ['MO', 'Missouri', 'Show Me State'], ['MT', 'Montana', 'Big Sky Country'], ['NE', 'Nebraska', 'Beef State'], ['NV', 'Nevada', 'Silver State'], ['NH', 'New Hampshire', 'Granite State'], ['NJ', 'New Jersey', 'Garden State'], ['NM', 'New Mexico', 'Land of Enchantment'], ['NY', 'New York', 'Empire State'], ['NC', 'North Carolina', 'First in Freedom'], ['ND', 'North Dakota', 'Peace Garden State'], ['OH', 'Ohio', 'The Heart of it All'], ['OK', 'Oklahoma', 'Oklahoma is OK'], ['OR', 'Oregon', 'Pacific Wonderland'], ['PA', 'Pennsylvania', 'Keystone State'], ['RI', 'Rhode Island', 'Ocean State'], ['SC', 'South Carolina', 'Nothing Could be Finer'], ['SD', 'South Dakota', 'Great Faces, Great Places'], ['TN', 'Tennessee', 'Volunteer State'], ['TX', 'Texas', 'Lone Star State'], ['UT', 'Utah', 'Salt Lake State'], ['VT', 'Vermont', 'Green Mountain State'], ['VA', 'Virginia', 'Mother of States'], ['WA', 'Washington', 'Green Tree State'], ['WV', 'West Virginia', 'Mountain State'], ['WI', 'Wisconsin', "America's Dairyland"], ['WY', 'Wyoming', 'Like No Place on Earth']];

		var LANG_ID = themeDisplay.getDefaultLanguageId();
		var GROUP_ID = themeDisplay.getParentGroupId();

		var ASYNC_Q = new A.AsyncQueue();

		var SERVICE_CONTEXT = {
			scopeGroupId: GROUP_ID
		};

		var sendError = function() {
			var msg = A.Array(arguments, 0, true).join(' - ');

			throw 'There was an error: ' + msg;
		};

		function createTags(states, prefix) {
			prefix = prefix || ' ' + (++A.Env._uidx);

			A.each(states,
				function(item, index, collection) {
					Liferay.Service(
						'/assettag/add-tag',
						{
							name: item[1] + prefix,
							tagProperties: null,
							serviceContext: SERVICE_CONTEXT
						},
						function(message) {
							if (!message) {
								sendError('Add Tag','no response');
							}
							else if (message.exception) {
								sendError('Add Tag', message.exception);
							}
						}
					);
				}
			);
		}

		function createCategories(states, prefix) {
			prefix = prefix || ' ' + (++A.Env._uidx);

			var titleMap = {};

			titleMap[LANG_ID] = 'States' + prefix;

			Liferay.Service(
				'/assetvocabulary/add-vocabulary',
				{
					title: 'States' + prefix,
					serviceContext: SERVICE_CONTEXT
				},
				function(message) {
					if (!message) {
						sendError('Add Vocabulary','no response');
					}
					else {
						if (message.exception) {
							sendError('Add Vocabulary',message.exception);
						}
						else {
							A.each(states,
								function(item, index, collection) {
									ASYNC_Q.add(A.bind(_createCategories, this, item, index, collection, message));
								}
							);

							ASYNC_Q.run();
						}
					}
				}
			);

			function _createCategories(item, index, collection, message) {
				var prefix = '';

				var titleMap = {};
				var descriptionMap = {};

				titleMap[LANG_ID] = item[1] + prefix;

				descriptionMap[LANG_ID] = item[1];

				ASYNC_Q.pause();

				Liferay.Service(
					'/assetcategory/add-category',
					{
						parentCategoryId: 0,
						titleMap: A.JSON.stringify(titleMap),
						descriptionMap: A.JSON.stringify(descriptionMap),
						vocabularyId: message.vocabularyId,
						categoryProperties: null,
						serviceContext: SERVICE_CONTEXT
					},
					function(catMessage) {
						if (!catMessage) {
							ASYNC_Q.run();
							sendError('Add Category','no response');
						}
						else {
							if (catMessage.exception) {
								ASYNC_Q.run();
								sendError('Add Category',catMessage.exception);
							}
							else {
								A.each(states,
									function(item, index, collection) {
										ASYNC_Q.add(
											function() {
												if (index > 5) {
													return;
												}
												var titleMap = {};

												titleMap[LANG_ID] = item[0] + prefix;

												ASYNC_Q.pause();

												Liferay.Service(
													'/assetcategory/add-category',
													{
														parentCategoryId: catMessage.categoryId,
														titleMap: A.JSON.stringify(titleMap),
														descriptionMap: A.JSON.stringify(descriptionMap),
														vocabularyId: message.vocabularyId,
														categoryProperties: null,
														serviceContext: SERVICE_CONTEXT
													},
													function() {
														ASYNC_Q.run();
													}
												);
											}
										);
									}
								);

								ASYNC_Q.run();
							}
						}
					}
				);
			}
		}

		A.STATES = states;
		A.createTags = createTags;
		A.createCategories = createCategories;

		// createTags(states);
		createCategories(states);
	}
);