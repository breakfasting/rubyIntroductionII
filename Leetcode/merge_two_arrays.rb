# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
    # create a dummy node as the head
    head = ListNode.new("head")
    current = head
    # iterate through both lists until both are nil
    while !(l1.nil? && l2.nil?)
        if l1.nil?
            current.next = l2
            l2 = l2.next
        elsif l2.nil?
            current.next = l1
            l1 = l1.next
        else
            # compare sizes before moving it to the list
            if l1.val <= l2.val 
                current.next = l1
                l1 = l1.next
            else
                current.next= l2
                l2 = l2.next
            end
        end
        current = current.next
    end
    
    # remove the head and return
    return head.next
end