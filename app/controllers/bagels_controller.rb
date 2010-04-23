class BagelsController < ApplicationController
  # GET /bagels
  # GET /bagels.xml
  def index
        @bagels = Bagel.all
    
        respond_to do |format|
          format.html # index.html.erb
          format.xml  { render :xml => @bagels }
        end
      end
    
      # GET /bagels/1
      # GET /bagels/1.xml
      def show
        @bagel = Bagel.find_by_dough(params[:id])
    
        respond_to do |format|
          format.html # show.html.erb
          format.xml  { render :xml => @bagel }
        end
      end
    
      # GET /bagels/new
      # GET /bagels/new.xml
      def new
        @bagel = Bagel.new
    
        respond_to do |format|
          format.html # new.html.erb
          format.xml  { render :xml => @bagel }
        end
      end
    
      # GET /bagels/1/edit
      def edit
        @bagel = Bagel.find(params[:id])
      end
    
      # POST /bagels
      # POST /bagels.xml
      def create
        @bagel = Bagel.new(params[:bagel])
    
        respond_to do |format|
          if @bagel.save
            format.html { redirect_to(@bagel, :notice => 'Bagel was successfully created.') }
            format.xml  { render :xml => @bagel, :status => :created, :location => @bagel }
          else
            format.html { render :action => "new" }
            format.xml  { render :xml => @bagel.errors, :status => :unprocessable_entity }
          end
        end
      end
    
      # PUT /bagels/1
      # PUT /bagels/1.xml
      def update
        @bagel = Bagel.find(params[:id])
    
        respond_to do |format|
          if @bagel.update_attributes(params[:bagel])
            format.html { redirect_to(@bagel, :notice => 'Bagel was successfully updated.') }
            format.xml  { head :ok }
          else
            format.html { render :action => "edit" }
            format.xml  { render :xml => @bagel.errors, :status => :unprocessable_entity }
          end
        end
      end
    
      # DELETE /bagels/1
      # DELETE /bagels/1.xml
      def destroy
        @bagel = Bagel.find_by_dough(params[:id])
        @bagel.destroy
    
        respond_to do |format|
          format.html { redirect_to(bagels_url) }
          format.xml  { head :ok }
        end
      end
end
