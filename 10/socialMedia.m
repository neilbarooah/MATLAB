function addicted = socialMedia(structure)

[p1 l1 c1 t1] = structure.Facebook;
[p2 l2 c2 t2] = structure.Twitter;
[p3 l3 c3 t3] = structure.Instagram;
fb = (p1*t1)./(l1+c1);
twit = (p2*t2)./(l2+c2);
insta = (p3*t3)./(l3+c3);
final = max([fb,twit,insta]);
switch final
    case fb
        addicted = 'Facebook';
    case twit
        addicted = 'Twitter';
    case insta
        addicted = 'Instagram';
end
