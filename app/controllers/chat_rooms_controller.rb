class ChatRoomsController < ApplicationController
  # GET /chat_rooms
  # GET /chat_rooms.xml
  def index
    @chat_rooms = ChatRoom.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @chat_rooms }
    end
  end

  # GET /chat_rooms/1
  # GET /chat_rooms/1.xml
  def show
    @chat_room = ChatRoom.find(params[:id])
	@chat_line = ChatLine.new
	puts "\n\n chatline::\t\t" + @chat_line.inspect
	@chat_line.chat_room = @chat_room
	puts "\n\n chatline::\t\t" + @chat_line.inspect
	

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @chat_room }
    end
  end

  # GET /chat_rooms/new
  # GET /chat_rooms/new.xml
  def new
    @chat_room = ChatRoom.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @chat_room }
    end
  end

  # GET /chat_rooms/1/edit
  def edit
    @chat_room = ChatRoom.find(params[:id])
  end

  # POST /chat_rooms
  # POST /chat_rooms.xml
  def create
    @chat_room = ChatRoom.new(params[:chat_room])

    respond_to do |format|
      if @chat_room.save
        format.html { redirect_to(@chat_room, :notice => 'Chat room was successfully created.') }
        format.xml  { render :xml => @chat_room, :status => :created, :location => @chat_room }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @chat_room.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /chat_rooms/1
  # PUT /chat_rooms/1.xml
  def update
    @chat_room = ChatRoom.find(params[:id])

    respond_to do |format|
      if @chat_room.update_attributes(params[:chat_room])
        format.html { redirect_to(@chat_room, :notice => 'Chat room was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @chat_room.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /chat_rooms/1
  # DELETE /chat_rooms/1.xml
  def destroy
    @chat_room = ChatRoom.find(params[:id])
    @chat_room.destroy

    respond_to do |format|
      format.html { redirect_to(chat_rooms_url) }
      format.xml  { head :ok }
    end
  end
end
