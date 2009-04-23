class Yoda
  VERSION = '1.0.0'

  def self.fail_me x, op, y
    raise Yoda::FailMe, "Fail me you did: #{x} #{op} #{y}"
  end

  class FailMe < RuntimeError; end
  class Expectation; end
  class ValueExpectation < Expectation
    attr_accessor :value
    def initialize value
      self.value = value
    end
  end

  class Equality < ValueExpectation
    def matches value
      Yoda.fail_me self.value, "!=", value unless self.value == value
    end
  end

  class InEquality < ValueExpectation
    def matches value
      Yoda.fail_me self.value, "==", value unless self.value != value
    end
  end
end

class Object
  def it_is
    Yoda::Equality.new self
  end
  def it_is_not
    Yoda::InEquality.new self
  end
  alias :it_is!     :it_is
  alias :it_is?     :it_is
  alias :it_is_not! :it_is_not
  alias :it_is_not? :it_is_not
end

class String
  def it_will
    yield
  end
end

class Module
  def yoda
    public_instance_methods(false).each do |method|
      class_eval "
      alias :darth_#{method} :#{method}
      def #{method}(*args)
        if Yoda::Expectation === args.first then
          args.first.matches self.darth_#{method}
        else
          self.darth_#{method}(*args)
        end
      end"
    end

    yield
  end
end
