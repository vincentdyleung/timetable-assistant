class CourseSectionsController < ApplicationController
  # GET /course_sections
  # GET /course_sections.json
  def index
    @course_sections = CourseSection.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @course_sections }
    end
  end

  # GET /course_sections/1
  # GET /course_sections/1.json
  def show
    @course_section = CourseSection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @course_section }
    end
  end

  # GET /course_sections/new
  # GET /course_sections/new.json
  def new
    @course_section = CourseSection.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @course_section }
    end
  end

  # GET /course_sections/1/edit
  def edit
    @course_section = CourseSection.find(params[:id])
  end

  # POST /course_sections
  # POST /course_sections.json
  def create
    @course_section = CourseSection.new(params[:course_section])

    respond_to do |format|
      if @course_section.save
        format.html { redirect_to @course_section, notice: 'Course section was successfully created.' }
        format.json { render json: @course_section, status: :created, location: @course_section }
      else
        format.html { render action: "new" }
        format.json { render json: @course_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /course_sections/1
  # PUT /course_sections/1.json
  def update
    @course_section = CourseSection.find(params[:id])

    respond_to do |format|
      if @course_section.update_attributes(params[:course_section])
        format.html { redirect_to @course_section, notice: 'Course section was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @course_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_sections/1
  # DELETE /course_sections/1.json
  def destroy
    @course_section = CourseSection.find(params[:id])
    @course_section.destroy

    respond_to do |format|
      format.html { redirect_to course_sections_url }
      format.json { head :no_content }
    end
  end
end
