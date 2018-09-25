class StaticPagesController < ActionController::Base
 #include is inheritence to get the contents of the helper. 
 #This is to avoid writing repetative code and is therefore achieveing DRYness
 include UsersHelper

   
  #if index is requeste from the browser and it is routed in routs it will run index in views

  def home
   @time = Time.now.strftime("%B %e, %Y at %I:%M %p")
   @archive = Archive.all
   
   
  end


 def search
    @search_term = params[:q]
    #@the search term is what will be presented in q
    @st ="%#{params[:q]}%"
    #seatchterm will be used to search in students table searchin for the first name here
    #@students = Student.where("lower(email) like (?) or lower(surname) like (?) or lower(school) like (?)", st.downcase, st.downcase, st.downcase)
  end
  
  
 def about
 
 end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
