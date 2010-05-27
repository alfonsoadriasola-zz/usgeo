class DataPointsController < ApplicationController
  # GET /data_points
  # GET /data_points.xml
  def index
    @data_points = DataPoint.new
    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @data_points }
    end
  end

  def search
    address = params[:data_point][:asciiname] << "%"

    @data_point = DataPoint.find :first, :conditions => "asciiname like '#{address}'"


    render :show
  end


  def show
    @data_point = DataPoint.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :xml => @data_point }
    end
  end

end
