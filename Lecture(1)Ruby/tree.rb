class Node
    # constructor
    # class => Object(left,right,data)
    attr_accessor :left, :right, :data
    def initialize(d,l,r)
        @data = d
        @left = l
        @right= r
    end

    def to_s(node)
        s = @left.nil?()? ".": @left.data.to_s
        s += "<-"+@data.to_s+"->"
        s += @right.nil?()? ".": @right.data.to_s
        return s
    end
end

def display(node)
    if(node == nil)
        return 
    end

    # to string => answer => console
    puts (node)
    display(node.left)
    display(node.right)
end

right = Node.new(75,nil,nil)
left = Node.new(50,nil,nil)
root = Node.new(25,left,right)

display(root)
