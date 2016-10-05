function plotShapes(shape,diameter,degrees,translation)

switch shape
    case 'circle'
        radius = diameter./2;
        ang = linspace(0,2*pi);
        x = radius * cos(ang);
        y = radius * sin(ang);
        plot(translation(1) + x,translation(2) + y,'k');
        axis square;
        axis([-diameter diameter -diameter diameter]);
    case 'square'
        radius = diameter./2;
        xx = [-radius -radius radius radius -radius];
        yy = [-radius radius radius -radius -radius];
        a = [cosd(degrees), sind(degrees); -sind(degrees), cosd(degrees)] * [xx(1);yy(1)];
        b = [cosd(degrees), sind(degrees); -sind(degrees), cosd(degrees)] * [xx(2);yy(2)];
        c = [cosd(degrees), sind(degrees); -sind(degrees), cosd(degrees)] * [xx(3);yy(3)];
        d = [cosd(degrees), sind(degrees); -sind(degrees), cosd(degrees)] * [xx(4);yy(4)];
        e = [cosd(degrees), sind(degrees); -sind(degrees), cosd(degrees)] * [xx(5);yy(5)];
        x = [a(1) b(1) c(1) d(1) e(1)];
        x = x+translation(1);
        y = [a(2) b(2) c(2) d(2) e(2)];
        y = y+translation(2);
        plot(x,y,'k');
        axis square;
        axis([-diameter diameter -diameter diameter]);
end
        
        
        