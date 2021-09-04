exports.handler = async (event, context) => {
	//console.log('Received event:', JSON.stringify(event, null, 2));

	let body;
	let statusCode = '200';
	const headers = {
		'Content-Type': 'application/json',
	};

	try {
		const item = [
			{
				title: 'Product',
				description: "A product from Acme's catalog",
				type: 'object',
				properties: {
					id: {
						description: 'The unique identifier for a product',
						type: 'integer',
					},
					name: {
						description: 'Name of the product',
						type: 'string',
					},
					price: {
						type: 'number',
						minimum: 0,
						exclusiveMinimum: true,
					},
					tags: {
						type: 'array',
						items: {
							type: 'string',
						},
						minItems: 1,
						uniqueItems: true,
					},
				},
			},
		];
		body = JSON.stringify(item);
	} catch (err) {
		statusCode = '400';
		body = err.message;
	}

	return {
		statusCode,
		body,
		headers,
	};
};
