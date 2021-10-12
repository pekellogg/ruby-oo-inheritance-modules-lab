module Memorable

    module ClassMethods

        def reset_all
            self.all.clear
        end

        def count
            self.all.count
        end

    end

    module InstanceMethods

        def initialize
            self.save if self.unique?
        end
        
        def save
            self.class.all << self
        end
        
        def unique?
            !self.class.all.include?(self) ? true : false
        end

    end

end
