cache = {}

def get_page(url)
  return cache[url] if cache.key?(url)

  data = get_data_from_server(url)
  cache[url] = data 
  data 
end