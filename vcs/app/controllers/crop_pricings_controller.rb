class CropPricingsController < ApplicationController
  # GET /crop_pricings
  # GET /crop_pricings.xml
  def index
    @crop_pricings = CropPricing.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @crop_pricings }
    end
  end

  # GET /crop_pricings/1
  # GET /crop_pricings/1.xml
  def show
    @crop_pricing = CropPricing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @crop_pricing }
    end
  end

  # GET /crop_pricings/new
  # GET /crop_pricings/new.xml
  def new
    @crop_pricing = CropPricing.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @crop_pricing }
    end
  end

  # GET /crop_pricings/1/edit
  def edit
    @crop_pricing = CropPricing.find(params[:id])
  end

  # POST /crop_pricings
  # POST /crop_pricings.xml
  def create
    @crop_pricing = CropPricing.new(params[:crop_pricing])

    respond_to do |format|
      if @crop_pricing.save
        format.html { redirect_to(@crop_pricing, :notice => 'CropPricing was successfully created.') }
        format.xml  { render :xml => @crop_pricing, :status => :created, :location => @crop_pricing }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @crop_pricing.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /crop_pricings/1
  # PUT /crop_pricings/1.xml
  def update
    @crop_pricing = CropPricing.find(params[:id])

    respond_to do |format|
      if @crop_pricing.update_attributes(params[:crop_pricing])
        format.html { redirect_to(@crop_pricing, :notice => 'CropPricing was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @crop_pricing.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /crop_pricings/1
  # DELETE /crop_pricings/1.xml
  def destroy
    @crop_pricing = CropPricing.find(params[:id])
    @crop_pricing.destroy

    respond_to do |format|
      format.html { redirect_to(crop_pricings_url) }
      format.xml  { head :ok }
    end
  end
end
