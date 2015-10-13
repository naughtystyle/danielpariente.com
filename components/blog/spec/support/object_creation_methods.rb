module ObjectCreationMethods

  private

  def counter
    @counter ||= 0
    @counter += 1
  end

  def apply(object, defaults, overrides)
    options = defaults.merge(overrides)
    options.each do |method, value_or_proc|
      object.send(
          "#{method}=",
          value_or_proc.is_a?(Proc) ? value_or_proc.call : value_or_proc
      )
    end
  end
end