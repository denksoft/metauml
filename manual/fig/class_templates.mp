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
 
beginfig(1);     
  Class.V("Vector")("elements: T(n)")();
  Template.T("T", "n: int");
  Template_attachToClass.T(V);
  
  drawObjects(V);
  show "-----------------------------";
  drawObjects(T);
endfig;

beginfig(2);
%   save P,C;
   
%   newClass.P("Person")()();
%   newClass.C("Company")()();
  
%   drawClassAt.P ( P.nw = (0,0) );
%   d rawClassAt.C ( C.w = P.e + (150,0) );
  
%   drawRelation(association)(P.e -- C.w);

%   assocItem("employee", item.sw = P.e);
%   assocItem("works for", item.n = .5[P.e,C.w]);
endfig;

end
