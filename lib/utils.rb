module Utils
  def Utils.memoize(className, methodName)
    className.class_eval do
      alias_method("original_memoize_#{methodName}", methodName)

      define_method(methodName) do |*args|
        hash = instance_variable_get("@memoize_#{methodName}_hash")

        if hash.nil?
          hash = Hash.new
          instance_variable_set("@memoize_#{methodName}_hash", hash)
        end

        return hash[args] if hash.has_key?(args)
        res = self.send("original_memoize_#{methodName}", *args)
        hash[args] = res
        return res
      end
    end
  end
end
