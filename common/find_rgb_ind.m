function rgb_ind = find_rgb_ind(wl,options)
if nargin < 2
    options = [];
end

ideal_red_wl = parse_param(options, 'ideal_red_wl', 650);
ideal_green_wl = parse_param(options, 'ideal_green_wl', 540);
ideal_blue_wl = parse_param(options, 'ideal_blue_wl', 470);

if mean(wl) < 10 % the unit is micrometer
    wl = wl*1e3;
end

blue_ind = find(wl > ideal_blue_wl, 1, 'first');
green_ind = find(wl > ideal_green_wl, 1, 'first');
red_ind = find(wl > ideal_red_wl, 1, 'first');

rgb_ind = [red_ind,green_ind,blue_ind];

