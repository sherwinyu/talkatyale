class TestObj2sController < ApplicationController
  # GET /test_obj2s
  # GET /test_obj2s.xml
  def index
    @test_obj2s = TestObj2.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @test_obj2s }
    end
  end

  # GET /test_obj2s/1
  # GET /test_obj2s/1.xml
  def show
    @test_obj2 = TestObj2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @test_obj2 }
    end
  end

  # GET /test_obj2s/new
  # GET /test_obj2s/new.xml
  def new
    @test_obj2 = TestObj2.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @test_obj2 }
    end
  end

  # GET /test_obj2s/1/edit
  def edit
    @test_obj2 = TestObj2.find(params[:id])
  end

  # POST /test_obj2s
  # POST /test_obj2s.xml
  def create
    @test_obj2 = TestObj2.new(params[:test_obj2])

    respond_to do |format|
      if @test_obj2.save
        format.html { redirect_to(@test_obj2, :notice => 'Test obj2 was successfully created.') }
        format.xml  { render :xml => @test_obj2, :status => :created, :location => @test_obj2 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @test_obj2.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /test_obj2s/1
  # PUT /test_obj2s/1.xml
  def update
    @test_obj2 = TestObj2.find(params[:id])

    respond_to do |format|
      if @test_obj2.update_attributes(params[:test_obj2])
        format.html { redirect_to(@test_obj2, :notice => 'Test obj2 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @test_obj2.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /test_obj2s/1
  # DELETE /test_obj2s/1.xml
  def destroy
    @test_obj2 = TestObj2.find(params[:id])
    @test_obj2.destroy

    respond_to do |format|
      format.html { redirect_to(test_obj2s_url) }
      format.xml  { head :ok }
    end
  end
end
