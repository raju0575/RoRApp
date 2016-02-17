class ShJob
  include Sidekiq::Worker
  include Sidetiq::Schedulable

  recurrence { daily }

  def perform
    Sidekiq.redis do |conn|
      conn.incrby('foo', 1)
    end
  end
end