-- equiv pair start,167
succ in Workstation  -> lone Workstation
Workstation in (begin . *succ)
no (end . succ)
-- div,1
Workstation in begin.*succ
succ in Workstation lone -> lone Workstation
no end.succ
-- div,1
succ in Workstation lone -> lone Workstation
no end.succ
Workstation in begin.*succ
-- div,2
succ in Workstation lone -> lone Workstation
Workstation in begin.*succ
no end.succ
-- div,12
Workstation in begin.*succ
no end.^succ
all w : Workstation | lone w.succ
-- div,1
Workstation = begin.*succ
no end.succ
all w : Workstation-end | one w.succ
-- div,2
all w:Workstation-end | one w.succ
no end.succ
Workstation in begin.*succ
-- div,14
Workstation in begin.*succ
no end.succ
all w:Workstation-end | one w.succ
-- div,1
no end.succ
all w:Workstation-end | one w.succ
Workstation in begin.*succ
-- div,2
begin.*succ = Workstation
no ^succ & iden
all w : Workstation-end | one w.succ
-- div,1
no end.succ

all ws : Workstation | lone ws.succ

Workstation-begin in begin.^succ
-- div,4
all w: Workstation | w not in w.^succ and (w in begin or one succ.w) and (w in end or one w.succ)
-- div,3
no iden & ^succ
Workstation - begin in Workstation.succ
all w : Workstation - end | one w.succ
-- div,2
succ in Workstation lone -> lone Workstation
Workstation in (begin.*succ & end.*(~succ))
no iden & ^succ
-- div,2
Workstation in begin.*succ & end.*~succ
all w:Workstation | w not in w.^succ and lone w.succ
-- div,1
all w: Workstation - end | one w.succ
no end.succ
all w: Workstation | w in begin.*succ
-- div,2
all x : Workstation-end | one x.succ

no end.succ

no succ.begin

Workstation in begin.*succ
-- div,1
all w : Workstation-end | one w.succ and w not in w.succ
(Workstation in begin.*succ) and (no end.succ)
-- div,1
all w:Workstation | lone w.succ

no end.succ
no succ.begin
begin.^succ = Workstation - begin
-- div,1
all ws:Workstation-end | one ws.succ
no end.succ
no succ.begin
Workstation in begin.*succ
-- div,2
all w : Workstation | (no succ.w <=> w in begin) and (no w.succ <=> w in end) and lone w.succ and w not in w.^succ
-- div,4
begin.*succ = Workstation
all w : Workstation | w not in w.^succ
all w : Workstation-end | one w.succ
-- div,2
all w : Workstation | (no succ.w <=> w in begin) and (no w.succ <=> w in end) and lone w.succ
no (^succ & iden)
-- div,1
begin not in Workstation.succ

no end.succ

all ws : Workstation | lone ws.succ


Workstation-begin in begin.^succ
-- div,3
no iden & ^succ
all w : Workstation - begin | w in Workstation.succ
all w : Workstation - end | one w.succ
-- div,1
all w : Workstation - begin | w in Workstation.succ
all w : Workstation - end | one w.succ
no iden & ^succ
-- div,1
all b : begin | all e : end | Workstation-b in b.^(succ) and no e.^(succ)
all w : Workstation | lone w.succ
-- div,4
all w:Workstation | lone w.succ

one w:Workstation | w.^succ = Workstation - w
no end.succ
no succ.begin
-- div,1
succ in Workstation lone -> lone Workstation
Workstation in (begin . *succ)
no (end . succ)
all w : Workstation | w not in (w . ^succ)
-- div,3
all x : Workstation-end | one x.succ

no end.succ

no begin & (Workstation-begin).succ

Workstation in begin.*succ
-- div,1
no end.succ

all ws : Workstation | lone ws.succ


Workstation-begin in begin.^succ

all ws : Workstation | ws not in ws.succ
-- div,1
all w:Workstation | lone w.succ
one w:Workstation | w.^succ = Workstation - w and no succ.w
no end.succ
no succ.begin
-- div,1
all w : Workstation | (no succ.w <=> w in begin) and (no w.succ <=> w in end)
all w : Workstation | lone w.succ
no (^succ & iden)
-- div,1
all w : Workstation-begin | w in begin.^(succ)
all w : Workstation-end | one w.succ
all w : Workstation | w not in w.^(succ)
-- div,1
all w: Workstation | lone w.succ
all w: Workstation | lone w.~succ
all w: Workstation | w in begin.*succ
no end.succ
-- div,1
no end.succ

all ws : Workstation | lone ws.succ

Workstation-begin in begin.^succ



all ws : Workstation-end | end in ws.^succ
-- div,1
all ws: Workstation | lone ws.succ
all ws: Workstation | lone ws.~succ
all ws: Workstation | ws in begin.*succ
no end.succ
-- div,2
all w : Workstation | w != begin => one succ.w
all w : Workstation | w != end => one w.succ
all w : Workstation | w not in w.^succ
-- div,2
all w : Workstation-begin | w in begin.^(succ)
all w : Workstation | w not in w.^(succ)
all w : Workstation | w not in end implies one w.succ
-- div,1
one begin
all w : Workstation-begin | w in begin.^(succ)
all w : Workstation | w not in w.^(succ)
all w : Workstation-end | one w.succ
-- div,1
all disj w,wb : Workstation | (wb in begin) => w in wb.^(succ)
all w : Workstation | w not in w.^(succ)
all w : Workstation | w not in end => one w.succ
-- div,12
one begin
all w : Workstation-begin | w in begin.^(succ)
all w : Workstation | w not in w.^(succ)
all w : Workstation | w not in end implies one w.succ
-- div,1
all w:Workstation | lone w.succ
one w:Workstation | w.^succ = Workstation - w 
no end.succ
no succ.begin
begin.^succ = Workstation - begin
-- div,1
all w : Workstation | w not in w.succ
all w : Workstation - begin | w in Workstation.succ
all w : Workstation - end | one w.succ
no iden & ^succ
-- div,2
no end.succ
all w : Workstation | w != begin => one succ.w
all w : Workstation | w != end => one w.succ
all w : Workstation | w not in w.^succ
-- div,1
all w : Workstation | no succ.w <=> w in begin
all w : Workstation | no w.succ <=> w in end
all w : Workstation | lone w.succ
no (^succ & iden)
-- div,3
all b, w : Workstation | b in begin and b != w implies w in b.^succ
all w : Workstation | w not in w.^succ
all w : Workstation | w not in end implies one w.succ
-- div,1
all w : Workstation | w in begin implies Workstation-{w} in w.^(succ)
all w : Workstation | w not in w.^(succ)
all w : Workstation | w not in end implies one w.succ
-- div,5
all w : Workstation | w in begin implies Workstation-{w} in w.^(succ)
all w : Workstation | w not in w.^(succ)
all w : Workstation | w not in end iff one w.succ
-- div,5
all w, wb : Workstation | wb in begin and w!=wb implies w in wb.^(succ)
all w : Workstation | w not in w.^succ
all w : Workstation | w not in end implies one w.succ
-- div,22
all w,ws:Workstation | ws in begin and w!=ws implies w in ws.^succ
all w:Workstation | w not in w.^succ
all w:Workstation | w not in end implies one w.succ
-- div,1
all w: Workstation | w not in w.^succ
all w,wb : Workstation | (wb in begin and w!=wb) implies w in wb.^(succ)
all w : Workstation | w not in end implies one w.succ
-- div,4
all w:Workstation | lone w.succ
all w:Workstation | w not in w.^succ
one w:Workstation | w.^succ = Workstation - w
no end.succ
no succ.begin
-- div,1
all w0, w1 : Workstation | w0 in begin and w1!=w0 implies w1 in w0.^succ
all w : Workstation | w not in w.^succ
all w : Workstation | w not in end implies one w.succ
-- div,1
all w1,w2 : Workstation | w1 in begin and w1!=w2 implies w2 in w1.^(succ)
all w : Workstation | w not in w.^(succ)
all w : Workstation | w not in end implies one w.succ
-- div,1
all ws, wsb : Workstation | (wsb in begin and ws != wsb) implies ws in wsb.^(succ)
all ws : Workstation | ws not in ws.^(succ)
all ws : Workstation | (ws not in end) implies one ws.succ
-- div,1
no succ.begin
no end.succ
all w : Workstation | w != begin => one succ.w
all w : Workstation | w != end => one w.succ
all w : Workstation | w not in w.^succ
-- div,1
all ws: Workstation | ws not in ws.^(succ)
all ws: Workstation | ws not in end implies one ws.succ
all ws1,ws2: Workstation | ws2 in begin and ws1 != ws2 implies ws1 in ws2.^(succ)
-- div,1
all ws1,ws2: Workstation | (ws2 in begin and ws1 != ws2) implies ws1 in ws2.^(succ)
all ws: Workstation | ws not in ws.^(succ)
all ws: Workstation | ws not in end implies one ws.succ
-- div,1
all w: Workstation | w not in Workstation.succ => w in begin
all w: Workstation | w not in w.^(succ)
all w: Workstation | lone w.succ
all w: Workstation | no w.succ => w in end
-- div,2
all w : Workstation | w in begin implies Workstation-{w} in w.^(succ)
all w : Workstation | w not in w.^(succ)
all w : Workstation | w not in end implies one w.succ
all w : Workstation | w in end implies no w.succ
-- div,2
all w : Workstation | no succ.w <=> w in begin
all w : Workstation | no w.succ <=> w in end
all w : Workstation - begin | w in begin.^succ
all w : Workstation | lone w.succ
no (^succ & iden)
-- div,1
all b: begin, e: end | b not in Workstation.succ and no e.succ
all w: Workstation | w not in w.^succ
all w: Workstation | w not in end implies one w.succ
all w: Workstation | w not in begin implies w in Workstation.succ
-- div,1
one w : Workstation | w in begin and w not in Workstation.succ
all w,wb : Workstation | (wb in begin and w!=wb) implies w in wb.^(succ)
all w : Workstation | w not in w.^(succ)
all w : Workstation | w not in end implies one w.succ
-- div,1
one b : begin | one e : end | all w : Workstation | lone w.succ and (b.^succ in Workstation) and (no e.succ)
all b : begin | all e : end | Workstation-b in b.^(succ) and no e.^(succ)
all w : Workstation | lone w.succ
-- div,1
one b : begin | one e : end | all w : Workstation | lone w.succ and (b.^succ in (Workstation-b)) and (no e.succ)
all b : begin | all e : end | Workstation-b in b.^(succ) and no e.^(succ)
all w : Workstation | lone w.succ
-- div,1
begin not in begin.^succ
begin.^succ = Workstation-begin
one begin.succ implies end in begin.^succ and end != begin
no end.succ
all w : Workstation - end | one w.succ and w not in w.^succ and end in w.^succ
all w : Workstation - begin | begin not in w.^succ
-- div,1
all w:Workstation | begin->w in *succ
all w1:Workstation | some w2:Workstation | w1->w2 in succ or w1 in end
all w1,w2:Workstation | (some w3:Workstation | w3->w1 in succ and w3->w2 in succ) implies w1 = w2
all w:Workstation | not end->w in succ
-- div,1
one w : Workstation | w in end and no w.succ
one w : Workstation | w in begin and w not in Workstation.succ
all w,wb : Workstation | (wb in begin and w!=wb) implies w in wb.^(succ)
all w : Workstation | w not in w.^(succ)
all w : Workstation | w not in end implies one w.succ
-- div,1
one begin
one end

all w : Workstation | w in begin => w not in Workstation.succ
all w,w2 : Workstation | w in w2.succ => w not in (Workstation -w2).succ
all w : Workstation | w not in w.(^succ)
all w : Workstation | (w in end => no w.succ) and (w not in end => one w.succ)
-- div,1
-- equiv pair end
