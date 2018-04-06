class EcsiteController < ApplicationController
  def index
    @data = Content.all
  end
  
  def show
    @params = params[:id]
    @data = Content.find_by_sql("SELECT * FROM contents WHERE id = #{@params}")
    # Content.find_by_sql("UPDATE contents SET title = 'ぼけ' WHERE id = 2")
  end  
end
