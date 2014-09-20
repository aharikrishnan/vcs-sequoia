class WholesellersController < ApplicationController
  # GET /wholesellers
  # GET /wholesellers.xml
  def index
    @wholesellers = Wholeseller.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @wholesellers }
    end
  end

  # GET /wholesellers/1
  # GET /wholesellers/1.xml
  def show
    @wholeseller = Wholeseller.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @wholeseller }
    end
  end

  # GET /wholesellers/new
  # GET /wholesellers/new.xml
  def new
    @wholeseller = Wholeseller.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @wholeseller }
    end
  end

  # GET /wholesellers/1/edit
  def edit
    @wholeseller = Wholeseller.find(params[:id])
  end

  # POST /wholesellers
  # POST /wholesellers.xml
  def create
    @wholeseller = Wholeseller.new(params[:wholeseller])

    respond_to do |format|
      if @wholeseller.save
        format.html { redirect_to(@wholeseller, :notice => 'Wholeseller was successfully created.') }
        format.xml  { render :xml => @wholeseller, :status => :created, :location => @wholeseller }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @wholeseller.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /wholesellers/1
  # PUT /wholesellers/1.xml
  def update
    @wholeseller = Wholeseller.find(params[:id])

    respond_to do |format|
      if @wholeseller.update_attributes(params[:wholeseller])
        format.html { redirect_to(@wholeseller, :notice => 'Wholeseller was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @wholeseller.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /wholesellers/1
  # DELETE /wholesellers/1.xml
  def destroy
    @wholeseller = Wholeseller.find(params[:id])
    @wholeseller.destroy

    respond_to do |format|
      format.html { redirect_to(wholesellers_url) }
      format.xml  { head :ok }
    end
  end
end
