class CourseInfosController < ApplicationController
  # GET /course_infos
  # GET /course_infos.json
  def index
    @course_infos = CourseInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @course_infos }
    end
  end

  # GET /course_infos/1
  # GET /course_infos/1.json
  def show
    @course_info = CourseInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @course_info }
    end
  end

  # GET /course_infos/new
  # GET /course_infos/new.json
  def new
    @course_info = CourseInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @course_info }
    end
  end

  # GET /course_infos/1/edit
  def edit
    @course_info = CourseInfo.find(params[:id])
  end

  # POST /course_infos
  # POST /course_infos.json
  def create
    @course_info = CourseInfo.new(params[:course_info])

    respond_to do |format|
      if @course_info.save
        format.html { redirect_to @course_info, notice: 'Course info was successfully created.' }
        format.json { render json: @course_info, status: :created, location: @course_info }
      else
        format.html { render action: "new" }
        format.json { render json: @course_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /course_infos/1
  # PUT /course_infos/1.json
  def update
    @course_info = CourseInfo.find(params[:id])

    respond_to do |format|
      if @course_info.update_attributes(params[:course_info])
        format.html { redirect_to @course_info, notice: 'Course info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @course_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_infos/1
  # DELETE /course_infos/1.json
  def destroy
    @course_info = CourseInfo.find(params[:id])
    @course_info.destroy

    respond_to do |format|
      format.html { redirect_to course_infos_url }
      format.json { head :no_content }
    end
  end
end
