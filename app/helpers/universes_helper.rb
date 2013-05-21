module UniversesHelper
  
  def current_universe
    @current_universe ||= session[:universe]
  end
  
  def current_universe=(universe)
    @current_universe = universe
  end
  
end
