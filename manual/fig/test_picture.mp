% Part of the MetaUML manual.
% Copyright (C) 2005 Ovidiu Gheorghies
%
% This program is free software; you can redistribute it and/or
% modify it under the terms of the GNU General Public License
% as published by the Free Software Foundation; either version 2
% of the License, or (at your option) any later version.
%
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with this program; if not, write to the Free Software
% Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

input metauml;

string theFont;
theFont := "tyxbtt";

beginfig(1);
   draw "xxx" infont defaultfont scaled defaultscale shifted (0,0);  
   draw "yyy" infont (iFont.name) scaled (iFont.scale) shifted (5, 5);
  
   Picture.p("foo, bar, foo");
   p.nw = (0,0);
   drawObject(p);

   Picture.q("nice, ugly");
   drawObjectAt(q)( q.nw = (30,30) );

   FontInfo.foo("tyxbtt", 1);  
   PictureInfo.nice(3,6,5,10)(foo);
   nice.boxed := 1;
  
   EPicture.myPic(nice)("what a nice feature");
   drawObjectAt(myPic)( myPic.nw = (0,0));
endfig;

beginfig(2);
   save p, q, r, t;

   Picture.p("foo");
   Picture.q("bar");
   p.nw = (10, 10);
   q.nw = (20, 20);

   drawObject(p);
   drawObject(q);

   drawObjects(p, q);

   Picture.a0("root" infont defaultfont);
   Picture.a1("toof");

   a[0].nw = (30, 30);
   a[1].nw = (50, 50);

   drawObjects(scantokens listArray(a)(2));
   %drawObjectArray(a)(2);
endfig;

beginfig(3);
  save p, q, r, t, u, pp;
  
  bboxmargin := 0;

  picture pp;
  pp = "a" infont theFont;
  Picture.p(pp);
  Picture.q("cool" infont theFont);
  Picture.r("good" infont theFont);
  Picture.t("tust");
  Picture.u("fook" infont theFont);
  
  p.nw = (0,50);
  setObjectJoin(pa.left=pb.left; pa.bottom = pb.top + 1);
  joinDrawObjects(p, q, r, t, u);

  defaultdy:=0;
  boxjoin(a.sw=b.nw; a.se=b.ne);
  boxit.A0("aaa");
  boxit.A1("dddd");
  boxit.A2("asf");
  boxit.A3("good");
  boxit.A4("..");
  A0.nw=(0,0);
  drawboxed(A0,A1,A2,A3,A4);

  show A[1].nw;
  
  Picture.B0(btex adsaas etex);
  Picture.X[2](btex asdasad etex);

  myy := 40;
  
  bboxmargin := 0;
 
  pair p;
  p := (30,myy);
  dotlabel.lrt(".", p);
  picture x;
  x := "f: int" infont theFont;
  draw bbox(x) shifted p;
  draw x shifted p;

  show "LLCORNER P";
  show llcorner x;
  
  pair q;
  q := (70,myy);
  dotlabel.lrt(".", q);
  picture y;
  y := "goofy: int" infont theFont;
  draw bbox(y) shifted q;
  draw y shifted q;

  pair qq;
  qq := (135,myy);
  dotlabel.lrt(".", qq);
  picture y;
  y := "goot" infont theFont;
  draw bbox(y) shifted qq;
  draw y shifted qq;

  show "LLCORNER q";
  show llcorner y;
  
  draw (0,myy)--(150, myy) dashed evenly;
  
  myyb := 70;
  Picture.aa(btex goof etex);
  aa.sw = (30, myyb);
  Picture_draw.aa;

  draw (0,myyb)--(100, myyb) dashed evenly;
endfig;

beginfig(4);
  save a, b;
  FontInfo.myFont(theFont, 1);
  PictureInfo.myWay(0,0,0,0)(myFont);
  myWay.boxed := 1;
  
  EPicture.a0(myWay)("goof");
  EPicture.a1(myWay)("Aoorian");
  EPicture.a2(myWay)("fpp");
  EPicture.a3(myWay)("f: int");
  EPicture.a4(myWay)("aa()");

  a0.nw = (0,0);
  setObjectJoin(pa.bottom = pb.bottom; pa.right = pb.left - 10);
  joinDrawObjects(scantokens listArray(a)(5));

  draw a0.sw --  a4.se withcolor black dashed evenly;

  myWay.ignoreNegativeBase := 1;
  EPicture.b0(myWay)("goof");
  EPicture.b1(myWay)("Aoorian");
  EPicture.b2(myWay)("fpp");
  EPicture.b3(myWay)("f: int");
  EPicture.b4(myWay)("aa()");

  b0.nw = (0,-20);
  setObjectJoin(pa.bottom = pb.bottom; pa.right = pb.left - 10);
  joinDrawObjects(scantokens listArray(b)(5));

  draw b0.sw --  b4.se withcolor black dashed evenly;
endfig;


beginfig(5);
  truecorners := 1;
  bboxmargin := 0;
  save p;
  picture basepict;
  basepict := "<<foo>>" infont "tyxtt";
  
  draw basepict;
  draw bbox basepict;  
endfig;

beginfig(6);
  item.foo(iPictBoxed)("foo bar cool")(foo.nw = (0,0));
  item.bar(iPict)("x: int")(bar.nw = (20,20));

  aitem(iPictBoxed)("an anounymous item")(obj.nw = (40,10));
endfig;

beginfig(7);
  save a, b, c, d, e, myFixed;
  PictureInfoCopy.myFixed(iPict);
  myFixed.ignoreNegativeBase := 1;
  myFixed.fixedWidth := 20;
  myFixed.boxed := 1;
  
  EPicture.a(myFixed)("a");
  EPicture.b(myFixed)("yummy");
  EPicture.c(myFixed)(".-.");
  EPicture.d(myFixed)("job");
  EPicture.e(myFixed)("football");
  
  leftToRight.bottom(20)(a, b, c, d, e);
  
  drawObjects(a, b, c, d, e);
endfig;

beginfig(8);
  save a, b, c, d, e, myFixed;
  PictureInfoCopy.myFixed(iPict);
  myFixed.halign := "center";
  myFixed.ignoreNegativeBase := 1;
  myFixed.fixedWidth := 20;
  myFixed.boxed := 1;
  
  EPicture.a(myFixed)("a");
  EPicture.b(myFixed)("yummy");
  EPicture.c(myFixed)(".-.");
  EPicture.d(myFixed)("job");
  EPicture.e(myFixed)("football");
  
  leftToRight.bottom(20)(a, b, c, d, e);
  
  drawObjects(a, b, c, d, e);
endfig;

beginfig(9);
  save a, b, c, d, e, myFixed;
  PictureInfoCopy.myFixed(iPict);
  myFixed.halign := "center";
  myFixed.ignoreNegativeBase := 1;
  myFixed.fixedWidth := 20;
  myFixed.fixedHeight := 30;
  myFixed.boxed := 1;
  
  EPicture.a(myFixed)("a");
  EPicture.b(myFixed)("yummy");
  EPicture.c(myFixed)(".-.");
  EPicture.d(myFixed)("job");
  EPicture.e(myFixed)("football");
  
  leftToRight.bottom(20)(a, b, c, d, e);
  
  drawObjects(a, b, c, d, e);
endfig;

beginfig(10);
  save a, b, c, d, e, myFixed;
  PictureInfoCopy.myFixed(iPict);
  myFixed.halign := "center";
  myFixed.valign := "center";
  myFixed.ignoreNegativeBase := 1;
  myFixed.fixedWidth := 20;
  myFixed.fixedHeight := 30;
  myFixed.boxed := 1;
  
  EPicture.a(myFixed)("a");
  EPicture.b(myFixed)("yummy");
  EPicture.c(myFixed)(".-.");
  EPicture.d(myFixed)("job");
  EPicture.e(myFixed)("football");
  
  leftToRight.bottom(20)(a, b, c, d, e);
  
  drawObjects(a, b, c, d, e);
endfig;

end
