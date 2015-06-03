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

  def error
  end

end


# Going to http://localhost:3000/todos/new should display an empty (new) todo as JSON




#       view_todos

#       puts
#       puts "What would you like to do?"
#       puts "1) Exit 2) Add Todo 3) Mark Todo As Complete"
#       print " > "
#       action = gets.chomp.to_i
#       case action
#       when 1 then exit
#       when 2 then add_todo
#       when 3 then mark_todo
#       else
#         puts "\a"
#         puts "Not a valid choice"
#       end
#     end
#   end

#   def add_todo
#     puts "Add your todo item"
#     Todo.create(entry: get_input)
#   end

#   def view_todos
#     @todos.each do |item|
#     puts "   #{item.id}) #{item.entry} #{item.completed}  "
#     end
#   end

#   def mark_todo
#     puts "Which item have you completed?"
#     Todo.update(get_input, completed: true)
#   end



