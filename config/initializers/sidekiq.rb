url = "redis://default:oE5JupWrojIFHXeIr1O2fV7URUi8WSK6@redis-10704.c1.eu-west-1-3.ec2.cloud.redislabs.com:10704"
password = "pe6dc62d20a26571050f70100b305e6f39b07d11b6e3c23394a3b0ee15a496c4f"

if url
  redis_options = { url: url }

  # Parse the URL to extract the password (if present)
  uri = URI.parse(url)
  redis_options[:password] = uri.password if uri.password

  Sidekiq.configure_server do |config|
    config.redis = redis_options
  end

  Sidekiq.configure_client do |config|
    config.redis = redis_options
  end

  $redis = Redis.new(redis_options)
else
  # Fallback to a local Redis server if REDIS_URL is not present
  redis_options = { url: 'redis://localhost:6379/0' }

  Sidekiq.configure_server do |config|
    config.redis = redis_options
  end

  $redis = Redis.new(redis_options)
end
