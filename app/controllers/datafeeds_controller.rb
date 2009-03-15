class DatafeedsController < ApplicationController
  # GET /datafeeds
  # GET /datafeeds.xml
  def index
    @datafeeds = Datafeed.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @datafeeds }
    end
  end

  # GET /datafeeds/1
  # GET /datafeeds/1.xml
  def show
    @datafeed = Datafeed.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @datafeed }
    end
  end

  # GET /datafeeds/new
  # GET /datafeeds/new.xml
  def new
    @datafeed = Datafeed.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @datafeed }
    end
  end

  # GET /datafeeds/1/edit
  def edit
    @datafeed = Datafeed.find(params[:id])
  end

  # POST /datafeeds
  # POST /datafeeds.xml
  def create
    @datafeed = Datafeed.new(params[:datafeed])

    respond_to do |format|
      if @datafeed.save
        flash[:notice] = 'Datafeed was successfully created.'
        format.html { redirect_to(@datafeed) }
        format.xml  { render :xml => @datafeed, :status => :created, :location => @datafeed }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @datafeed.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /datafeeds/1
  # PUT /datafeeds/1.xml
  def update
    @datafeed = Datafeed.find(params[:id])

    respond_to do |format|
      if @datafeed.update_attributes(params[:datafeed])
        flash[:notice] = 'Datafeed was successfully updated.'
        format.html { redirect_to(@datafeed) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @datafeed.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /datafeeds/1
  # DELETE /datafeeds/1.xml
  def destroy
    @datafeed = Datafeed.find(params[:id])
    @datafeed.destroy

    respond_to do |format|
      format.html { redirect_to(datafeeds_url) }
      format.xml  { head :ok }
    end
  end
end
