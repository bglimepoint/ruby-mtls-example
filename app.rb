require 'sinatra'

class Application < Sinatra::Base
  set :host_authorization, { permitted_hosts: [] }

  get '/' do
    # require 'pry-byebug'
    # binding.pry
    puts '==='
    puts
    puts request.env['puma.peercert']
    puts
    puts '==='
    puts
    puts request.env['puma.peercert'].inspect
    puts
    puts '==='
    "Cert OU: #{request.env['puma.peercert'].subject.to_a.find { it[0] == 'OU' }[1]}"
  end
end
