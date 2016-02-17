class TestWorker
    include Sidekiq::Worker
    def perform(test_message)
        Sidekiq.redis do |conn|
            unless conn.exists 'foo'
                conn.set('foo',10)
                conn.expire 'foo',(60)
            else
                conn.incrby('foo', 1)
            end
        end
    end
end