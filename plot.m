selectSide('front');
%selectSide('rear');

% left and right data are identical
% this piece of code works regardless of car side
camber      = fplot(CamberLeft)
toe         = fplot(ToeLeft)
caster      = fplot(CasterLeft)
kpi         = fplot(KingpinLeft)
antidive    = fplot(AntiDiveLeft)

if carSide == 'front'
    Ackermann    = fplot(AckermannLeft)
end
