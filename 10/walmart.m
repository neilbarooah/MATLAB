function out = walmart(struct1,target)
items = {struct1.Item}
[items, ndx] = sort(items)
prices = {struct1.Cost}
prices = prices(ndx)
[a total_items] = size(items)
[total_target, r] = size(target)
for n = 1:total_items
    item1 = items{n}
    x = 1
    while x <= total_target
        item2 = target{x,1}
        if isequal(item1,item2)
            prices(n) = target(x,2)
        end
        x = x + 1
    end
end
out = struct('Item',items,...
    'Cost',prices)

