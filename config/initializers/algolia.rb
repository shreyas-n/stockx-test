client = Algolia::Search::Client.create('XW7SBCT9V6', ENV['STOCKX_'])
STOCKX_ALGOLIA_INDEX = client.init_index('products')