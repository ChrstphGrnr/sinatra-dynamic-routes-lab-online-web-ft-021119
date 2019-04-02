require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 

      @name = params[:name]
      @name.reverse
  end

  get '/square/:number' do 

    @number = params[:number].to_i
    (@number ** 2).to_s

  end

  get '/say/:number/:phrase' do 

    @phrase = params[:phrase]
    @number = params[:number].to_i

    @x = 1 
    @str = []

    while @x <= @number
      @str << @phrase
      @x += 1 
    end
    @str

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    # binding.pry

    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5].chomp}."
      
  end
  
  get '/:operations/:number1/:number2' do 
    
    if params[:operations] == 'add'
      (params[:number1].to_i + params[:number2].to_i).to_s
    elsif params[:operations] == 'subtract'
      (params[:number1].to_i - params[:number2].to_i).to_s
    elsif params[:operations] == 'multiply'
      (params[:number1].to_i * params[:number2].to_i).to_s\
    elsif params[:operations] == 'divide'
      (params[:number1].to_i / params[:number2].to_i).to_s
    end

  end


end