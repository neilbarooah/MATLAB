function updated = omgShoes(invent,orders)
num_orders = length(orders);
brands = {orders.Model};
sizes = {orders.Size};
b = 1;
while b <= num_orders
    shoe = brands{b};
    sizea = sizes{b};
    model = {invent.Model};
    sized = {invent.Sizes};
    stock = {invent.Stock};
    [c num] = size(model);
    d = 1;
    while d <= num
        brand = model{d};
        if isequal(shoe,brand)
            concern = sized{d};
            e = length(concern);
            g = 1;
            while g <= e
                sizeb = concern(g);
                if isequal(sizea,sizeb)
                    stock1 = invent(d).Stock(g);
                    if stock1 == 1
                        invent(d).Sizes(g) = [];
                        invent(d).Stock(g) = [];
                        if isempty(invent(d).Stock)
                            invent(d).Sizes = 'Out of Stock';
                            invent(d).Stock = 'Out of Stock';
                        end
                    else
                        invent(d).Stock(g) = invent(d).Stock(g) - 1;
                    end
                    
                end
                g = g+1;
            end
        end
        d = d+1;
    end
    b = b + 1;
end
updated = invent;