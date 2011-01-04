class TestObjsController < ApplicationController
  # GET /test_objs
  # GET /test_objs.xml
  def index
    @test_objs = TestObj.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @test_objs }
    end
  end

  # GET /test_objs/1
  # GET /test_objs/1.xml
  def show
    @test_obj = TestObj.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @test_obj }
    end
  end

  # GET /test_objs/new
  # GET /test_objs/new.xml
  def new
    @test_obj = TestObj.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @test_obj }
    end
  end

  # GET /test_objs/1/edit
  def edit
    @test_obj = TestObj.find(params[:id])
  end

  # POST /test_objs
  # POST /test_objs.xml
  def create
    @test_obj = TestObj.new(params[:test_obj])

    respond_to do |format|
      if @test_obj.save
        format.html { redirect_to(@test_obj, :notice => 'Test obj was successfully created.') }
        format.xml  { render :xml => @test_obj, :status => :created, :location => @test_obj }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @test_obj.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /test_objs/1
  # PUT /test_objs/1.xml
  def update
    @test_obj = TestObj.find(params[:id])

    respond_to do |format|
      if @test_obj.update_attributes(params[:test_obj])
        format.html { redirect_to(@test_obj, :notice => 'Test obj was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @test_obj.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /test_objs/1
  # DELETE /test_objs/1.xml
  def destroy
    @test_obj = TestObj.find(params[:id])
    @test_obj.destroy

    respond_to do |format|
      format.html { redirect_to(test_objs_url) }
      format.xml  { head :ok }
    end
  end
end
