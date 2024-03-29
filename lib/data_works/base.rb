# This class wraps DataWorks::Works and only exposes methods that are
# meant to be public.  The sole purpose of this class is information
# hiding.
module DataWorks
  class Base

    def initialize
      @works = DataWorks::Works.new
    end

    # we expose the public interface here
    def method_missing(method_name, *args, **kwargs, &block)
      method_name = method_name.to_s
      if method_name =~ /\A(add_|the_)(\w+)\Z/ ||
         method_name =~ /\A(\w+)(\d+)\Z/ ||
         method_name =~ /\Aset_(current_default|restriction)\Z/ ||
         method_name =~ /\Aclear_(current_default|restriction)_for\Z/ ||
         method_name == 'visualize'
        @works.send(method_name, *args, **kwargs, &block)
      else
        raise NoMethodError.new("#{method_name} method not found in data works")
      end
    end

  end
end
