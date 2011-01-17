class ChatLinesController < ApplicationController
  # GET /chat_lines
  # GET /chat_lines.xml
  before_filter :debug

  def debug
  	puts "session is:" + session.inspect
	puts "params are:" + params.inspect
  end 
  def index
    @chat_lines = ChatLine.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @chat_lines }
    end
  end

  # GET /chat_lines/1
  # GET /chat_lines/1.xml
  def show
    @chat_line = ChatLine.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @chat_line }
    end
  end

  # GET /chat_lines/new
  # GET /chat_lines/new.xml
  def new
    @chat_line = ChatLine.new
	@chat_line.user = get_current_user
	@chat_line.chat_room = get_current_chat_room

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @chat_line }
    end
  end

  # GET /chat_lines/1/edit
  def edit
    @chat_line = ChatLine.find(params[:id])
  end

  # POST /chat_lines
  # POST /chat_lines.xml
  def create
  	puts params[:chat_line].inspect
	puts params[:chat_line]["chat_room"].inspect
	puts params[:chat_line]["user"].inspect
	puts params[:chat_line]["content"].inspect
	params[:chat_line]["chat_room"]=ChatRoom.find_by_name!(params[:chat_line]["chat_room"])
	params[:chat_line]["user"]=User.find_by_name! params[:chat_line]["user"] #.find(params[:chat_line]["user"])

    @chat_line = ChatLine.new(params[:chat_line])

    respond_to do |format|
      if @chat_line.save
        format.html { redirect_to(@chat_line, :notice => 'Chat line was successfully created.') }
        format.xml  { render :xml => @chat_line, :status => :created, :location => @chat_line }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @chat_line.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /chat_lines/1
  # PUT /chat_lines/1.xml
  def update
    @chat_line = ChatLine.find(params[:id])

    respond_to do |format|
      if @chat_line.update_attributes(params[:chat_line])
        format.html { redirect_to(@chat_line, :notice => 'Chat line was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @chat_line.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /chat_lines/1
  # DELETE /chat_lines/1.xml
  def destroy
    @chat_line = ChatLine.find(params[:id])
    @chat_line.destroy

    respond_to do |format|
      format.html { redirect_to(chat_lines_url) }
      format.xml  { head :ok }
    end
  end
end
