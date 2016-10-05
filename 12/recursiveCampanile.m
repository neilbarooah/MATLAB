function count = recursiveCampanile(radius,degrees,color)
    count = helper(radius,degrees,color,1);
end

function count = helper(radius,degrees,color,count)
    if radius./2 < 1
        hold off;
    else
        view(3);
        hold on;
        radius = radius./2;
        xx = [-radius -radius radius radius -radius];
        yy = [-radius radius radius -radius -radius];
        a = [cosd(degrees), -sind(degrees); sind(degrees), cosd(degrees)] * [xx(1);yy(1)];
        b = [cosd(degrees), -sind(degrees); sind(degrees), cosd(degrees)] * [xx(2);yy(2)];
        c = [cosd(degrees), -sind(degrees); sind(degrees), cosd(degrees)] * [xx(3);yy(3)];
        d = [cosd(degrees), -sind(degrees); sind(degrees), cosd(degrees)] * [xx(4);yy(4)];
        e = [cosd(degrees), -sind(degrees); sind(degrees), cosd(degrees)] * [xx(5);yy(5)];
        x = [a(1) b(1) c(1) d(1) e(1)];
        y = [a(2) b(2) c(2) d(2) e(2)];
        z = [count count count count count];
        if length(color) > 1
            col = [color color color color color color color color color color];
            c = col(count);
        else
            c = color;
        end
        radius = 1.8 .* radius;
        plot3(x,y,z,c);
        axis equal;
        xlabel('x-axis');
        ylabel('y-axis');
        zlabel('z-axis');
        title('My Campanile')
        z = z+1;
        count = count + 1;
        degrees = degrees .* count
        helper(radius,degrees,color,count);
        
    end
end