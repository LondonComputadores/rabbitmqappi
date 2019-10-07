require "bunny" # don't forget to put gem "bunny" in your Gemfile

b = Bunny.new ENV['CLOUDAMQP_URL']
b.start # start a communication session with the amqp server

q = b.queue 'test1' # declare a queue

# publish a message to the queue
q.publish 'Hello, everybody!'

delivery_properties, headers, payload = q.pop # retrieve one message from the queue

puts "This is the message: " + payload + "\n\n"

b.stop # close the connection