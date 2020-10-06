require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    params[:name].reverse
  end

  get '/square/:number' do 
    @num = params[:number].to_i
    @squared = @num ** 2
    "#{@squared}"
  end

  get '/say/:number/:phrase' do 
    count = ''
    params[:number].to_i.times do
     count += params[:phrase]
    end
    count
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  
  get '/:operation/:number1/:number2' do 

    @one = params[:number1].to_i
    @two = params[:number2].to_i
    case params[:operation]
    when "add"
      a = (@one + @two).to_s
    when "subtract"
      a = (@one - @two).to_s
    when "multiply"
      a = (@one * @two).to_s
    when "divide"
      a = (@one / @two).to_s
    end
    a
  end
end