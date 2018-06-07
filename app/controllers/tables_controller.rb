class TablesController < ApplicationController
    def create
          table = Table.new(table_params)
          if table.save
            payload = {
                table: table
            }
            # set up payload to send back to the front end
            render json: payload, status: 201
          else
            render json: {errors: table.errors}, status: 422
          end

      end

    def index


    end
    def update
    end

    private
    def table_params
      params.require(:tables).permit(:name, :booked)
    end


end
