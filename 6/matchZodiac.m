function out = matchZodiac(date1,date2)

[month1, date1] = strtok(date1, ' ');
[month2, date2] = strtok(date2, ' ');
date1 = str2num(date1);
date2 = str2num(date2);

if isequal(month1,'January')
    days = 0;
    date11 = date1 + days;
elseif isequal(month1,'February')
    days = 31;
    date11 = date1 + days;
elseif isequal(month1,'March')
    days = 60;
    date11 = date1 + days;
elseif isequal(month1,'April')
    days = 91;
    date11 = date1 + days;
elseif isequal(month1,'May')
    days = 121;
    date11 = date1 + days;
elseif isequal(month1,'June')
    days = 152;
    date11 = date1 + days;
elseif isequal(month1,'July')
    days = 182;
    date11 = date1 + days;
elseif isequal(month1,'August')
    days = 213;
    date11 = date1 + days;
elseif isequal(month1,'September')
    days = 244;
    date11 = date1 + days;
elseif isequal(month1,'October')
    days = 274;
    date11 = date1 + days;
elseif isequal(month1,'November')
    days = 305;
    date11 = date1 + days;
elseif isequal(month1,'December')
    days = 335;
    date11 = date1 + days;
end


if isequal(month2,'January')
    days = 0;
    date22 = date2 + days;
elseif isequal(month2,'February')
    days = 31;
    date22 = date2 + days;
elseif isequal(month2,'March')
    days = 60;
    date22 = date2 + days;
elseif isequal(month2,'April')
    days = 91;
    date22 = date2 + days;
elseif isequal(month2,'May')
    days = 121;
    date22 = date2 + days;
elseif isequal(month2,'June')
    days = 152;
    date22 = date2 + days;
elseif isequal(month2,'July')
    days = 182;
    date22 = date2 + days;
elseif isequal(month2,'August')
    days = 213;
    date22 = date2 + days;
elseif isequal(month2,'September')
    days = 244;
    date22 = date2 + days;
elseif isequal(month2,'October')
    days = 274;
    date22 = date2 + days;
elseif isequal(month2,'November')
    days = 305;
    date22 = date2 + days;
elseif isequal(month2,'December')
    days = 335;
    date22 = date2 + days;
end

if 20 <= date11 && date11 <= 49
    sign1 = 'Aquarius';
elseif 50 <= date11 && date11 <= 80
    sign1 = 'Pisces';
elseif 81 <= date11 && date11 <= 110
    sign1 = 'Aries';
elseif 111 <= date11 && date11 <= 141
    sign1 = 'Taurus';
elseif 142 <= date11 && date11 <= 172
    sign1 = 'Gemini';
elseif 173 <= date11 && date11 <= 204
    sign1 = 'Cancer';
elseif 205 <= date11 && date11 <= 235
    sign1 = 'Leo';
elseif 236 <= date11 && date11 <= 266
    sign1 = 'Virgo';
elseif 267 <= date11 && date11 <= 296
    sign1 = 'Libra';
elseif 297 <= date11 && date11 <= 326
    sign1 = 'Scorpio';
elseif 327 <= date11 && date11 <= 356
    sign1 = 'Sagittarius';
elseif 357 <= date11 && date11 <= 366 || 1 <= date11 && date11 <= 19
    sign1 = 'Capricorn';
end

if 19 < date22 && date22 < 50
    sign2 = 'Aquarius';
elseif 49 < date22 && date22 < 81
    sign2 = 'Pisces';
elseif 80 < date22 && date22 < 111
    sign2 = 'Aries';
elseif 110 < date22 && date22 < 142
    sign2 = 'Taurus';
elseif 141 < date22 && date22 < 173
    sign2 = 'Gemini';
elseif 172 < date22 && date22 < 205
    sign2 = 'Cancer';
elseif 204 < date22 && date22 < 236
    sign2 = 'Leo';
elseif 235 < date22 && date22 < 267
    sign2 = 'Virgo';
elseif 266 < date22 && date22 < 297
    sign2 = 'Libra';
elseif 296 < date22 && date22 < 327
    sign2 = 'Scorpio';
elseif 326 < date22 && date22 < 357
    sign2 = 'Sagittarius';
elseif 356 < date22 && date22 < 367 || 0 < date22 && date22 < 20
    sign2 = 'Capricorn';
end

switch sign1
    case 'Aries'
        if isequal(sign2,'Leo') || isequal(sign2,'Sagittarius')
            out = sprintf('100%%');
        elseif isequal(sign2,'Libra') || isequal(sign2,'Cancer') || isequal(sign2,'Capricorn')
            out = sprintf('25%%');
        elseif isequal(sign2,'Pisces') || isequal(sign2,'Taurus')
            out = sprintf('Wild Card');
        else
            out = sprintf('50%%');
        end
    case 'Taurus'
        if isequal(sign2,'Virgo') || isequal(sign2,'Capricorn')
            out = sprintf('100%%');
        elseif isequal(sign2,'Scorpio') || isequal(sign2,'Leo') || isequal(sign2,'Aquarius')
            out = sprintf('25%%');
        elseif isequal(sign2,'Aries') || isequal(sign2,'Gemini')
            out = sprintf('Wild Card');
        else
            out = sprintf('50%%');
        end
     case 'Gemini'
        if isequal(sign2,'Libra') || isequal(sign2,'Aquarius')
            out = sprintf('100%%');
        elseif isequal(sign2,'Virgo') || isequal(sign2,'Pisces') || isequal(sign2,'Sagittarius')
            out = sprintf('25%%');
        elseif isequal(sign2,'Taurus') || isequal(sign2,'Cancer')
            out = sprintf('Wild Card');
        else
            out = sprintf('50%%');
        end          

    case 'Cancer'
        if isequal(sign2,'Scorpio') || isequal(sign2,'Pisces')
            out = sprintf('100%%');
        elseif isequal(sign2,'Libra') || isequal(sign2,'Aries') || isequal(sign2,'Capricorn')
            out = sprintf('25%%');
        elseif isequal(sign2,'Gemini') || isequal(sign2,'Leo')
            out = sprintf('Wild Card');
        else
            out = sprintf('50%%');
        end
        
     case 'Leo'
        if isequal(sign2,'Aries') || isequal(sign2,'Sagittarius')
            out = sprintf('100%%');
        elseif isequal(sign2,'Aquarius') || isequal(sign2,'Scorpio') || isequal(sign2,'Taurus')
            out = sprintf('25%%');
        elseif isequal(sign2,'Cancer') || isequal(sign2,'Virgo')
            out = sprintf('Wild Card');
        else
            out = sprintf('50%%');
        end
        
     case 'Virgo'
        if isequal(sign2,'Taurus') || isequal(sign2,'Capricorn')
            out = sprintf('100%%');
        elseif isequal(sign2,'Pisces') || isequal(sign2,'Gemini') || isequal(sign2,'Sagittarius')
            out = sprintf('25%%');
        elseif isequal(sign2,'Leo') || isequal(sign2,'Libra')
            out = sprintf('Wild Card');
        else
            out = sprintf('50%%');
        end
        
     case 'Libra'
        if isequal(sign2,'Gemini') || isequal(sign2,'Aquarius')
            out = sprintf('100%%');
        elseif isequal(sign2,'Aries') || isequal(sign2,'Cancer') || isequal(sign2,'Capricorn')
            out = sprintf('25%%');
        elseif isequal(sign2,'Virgo') || isequal(sign2,'Scorpio')
            out = sprintf('Wild Card');
        else
            out = sprintf('50%%');
        end
        
     case 'Scorpio'
        if isequal(sign2,'Cancer') || isequal(sign2,'Pisces')
            out = sprintf('100%%');
        elseif isequal(sign2,'Taurus') || isequal(sign2,'Leo') || isequal(sign2,'Aquarius')
            out = sprintf('25%%');
        elseif isequal(sign2,'Libra') || isequal(sign2,'Sagittarius')
            out = sprintf('Wild Card');
        else
            out = sprintf('50%%');
        end
        
     case 'Sagittarius'
        if isequal(sign2,'Aries') || isequal(sign2,'Leo')
            out = sprintf('100%%');
        elseif isequal(sign2,'Gemini') || isequal(sign2,'Virgo') || isequal(sign2,'Pisces')
            out = sprintf('25%%');
        elseif isequal(sign2,'Scorpio') || isequal(sign2,'Cancer')
            out = sprintf('Wild Card');
        else
            out = sprintf('50%%');
        end
        
     case 'Capricorn'
        if isequal(sign2,'Taurus') || isequal(sign2,'Virgo')
            out = sprintf('100%%');
        elseif isequal(sign2,'Aries') || isequal(sign2,'Cancer') || isequal(sign2,'Libra')
            out = sprintf('25%%');
        elseif isequal(sign2,'Sagittarius') || isequal(sign2,'Aquarius')
            out = sprintf('Wild Card');
        else
            out = sprintf('50%%');
        end
        
     case 'Aquarius'
        if isequal(sign2,'Gemini') || isequal(sign2,'Libra')
            out = sprintf('100%%');
        elseif isequal(sign2,'Taurus') || isequal(sign2,'Scorpio') || isequal(sign2,'Leo')
            out = sprintf('25%%');
        elseif isequal(sign2,'Pisces') || isequal(sign2,'Capricorn')
            out = sprintf('Wild Card');
        else
            out = sprintf('50%%');
        end
        
     case 'Pisces'
        if isequal(sign2,'Cancer') || isequal(sign2,'Scorpio')
            out = sprintf('100%%');
        elseif isequal(sign2,'Gemini') || isequal(sign2,'Sagittarius') || isequal(sign2,'Virgo')
            out = sprintf('25%%');
        elseif isequal(sign2,'Aries') || isequal(sign2,'Aquarius')
            out = sprintf('Wild Card');
        else
            out = sprintf('50%%');
        end
end