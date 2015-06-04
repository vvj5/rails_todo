class TodosController < ApplicationController

  def index
    render json: Todo.all, status: 200
  end

  def new
    render json: Todo.new, status: 200
  end


  def show
    begin
      render json: Todo.find(params[:id]), status: 200
    rescue ActiveRecord::RecordNotFound => error
      render json: { error: error.message }, status: 422
    end
  end

  def create
    Todo.create(entry: params[:entry])
  end

  def delete
    begin
      Todo.destroy(params[:id])
    rescue ActiveRecord::RecordNotFound => error
      render json: "deleted", status: 200
    end
  end

end



# Sending a DELETE request to http://localhost:3000/todos/1
# should delete that todo from the database and return
# the message “deleted” as json (Using Postman)



# Sending a POST request to http://localhost:3000/todos with the params of { "body": "Finish Homework" }
# I should see my todo returned to me as json (Using Postman)

