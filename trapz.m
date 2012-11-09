function z = trapz(x,y)
% trapz - Trapezoid sum computed with vector-matrix multiply
%
% Parameter:    x             Integrand
%               y             Function values at x
% Returns:      z             Integral of y with respect to x
%
% Reference:
%               Matlab - Octave compatibility function    
%% ===========================================================================

%% ===========================================================================
% Copyright (C):                                        
%       2001-2003 by Forschungszentrum Telekommunikation Wien, Austria;
%                                                         All rights reserved.
% Project       : FTW's xDSLsimu
% Author(s)     : Bo Engstrom (bosse@upzide.com)
%
% CVS:       $Id: trapz.m,v 3.1 2002/12/27 16:15:18 tono Exp $
%% ===========================================================================
% Change History
%      2001-06-15 (Bosse) Created for Octave port
%% ===========================================================================

x=x(:);
m=length(x);
if size(y,1)~=m
  y=y.';
  tr=1;
else
  tr=0;
end

z = diff(x)' * (y(1:m-1,:) + y(2:m,:))/2;

if tr==1
  z=z.';
end

