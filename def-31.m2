-- G31
R = QQ[ x1, x2, x3, x4 ];
fs = {
168*x1^2*x2^2*x3^2*x4^2+14*x1^4*x2^4+14*x1^4*x3^4+14*x1^4*x4^4+14*x2^4*x3^4+14*x2^4*x4^4+14*x3^4*x4^4+x1^8+x2^8+x3^8+x4^8,
792*x1^2*x2^2*x3^2*x4^6+792*x1^2*x2^2*x3^6*x4^2+792*x1^2*x2^6*x3^2*x4^2+330*x1^4*x2^4*x3^4+330*x1^4*x2^4*x4^4+330*x1^4*x3^4*x4^4+330*x2^4*x3^4*x4^4-33*x1^4*x2^8-33*x1^4*x3^8-33*x1^4*x4^8-33*x2^4*x3^8-33*x2^4*x4^8-33*x3^4*x4^8+792*x1^6*x2^2*x3^2*x4^2-33*x1^8*x2^4-33*x1^8*x3^4-33*x1^8*x4^4-33*x2^8*x3^4-33*x2^8*x4^4-33*x3^8*x4^4+x1^12+x2^12+x3^12+x4^12,
-x1^2*x2^2*x3^2*x4^14+x1^2*x2^2*x3^6*x4^10+x1^2*x2^2*x3^10*x4^6-x1^2*x2^2*x3^14*x4^2+x1^2*x2^6*x3^2*x4^10+14*x1^2*x2^6*x3^6*x4^6+x1^2*x2^6*x3^10*x4^2+x1^2*x2^10*x3^2*x4^6+x1^2*x2^10*x3^6*x4^2-x1^2*x2^14*x3^2*x4^2-13*x1^4*x2^4*x3^4*x4^8-13*x1^4*x2^4*x3^8*x4^4+x1^4*x2^4*x3^12+x1^4*x2^4*x4^12+x1^4*x3^4*x4^12+x2^4*x3^4*x4^12-13*x1^4*x2^8*x3^4*x4^4-2*x1^4*x2^8*x3^8-2*x1^4*x2^8*x4^8-2*x1^4*x3^8*x4^8-2*x2^4*x3^8*x4^8+x1^4*x2^12*x3^4+x1^4*x2^12*x4^4+x1^4*x3^12*x4^4+x2^4*x3^12*x4^4+x1^6*x2^2*x3^2*x4^10+14*x1^6*x2^2*x3^6*x4^6+x1^6*x2^2*x3^10*x4^2+14*x1^6*x2^6*x3^2*x4^6+14*x1^6*x2^6*x3^6*x4^2+x1^6*x2^10*x3^2*x4^2-13*x1^8*x2^4*x3^4*x4^4-2*x1^8*x2^4*x3^8-2*x1^8*x2^4*x4^8-2*x1^8*x3^4*x4^8-2*x2^8*x3^4*x4^8-2*x1^8*x2^8*x3^4-2*x1^8*x2^8*x4^4-2*x1^8*x3^8*x4^4-2*x2^8*x3^8*x4^4+x1^10*x2^2*x3^2*x4^6+x1^10*x2^2*x3^6*x4^2+x1^10*x2^6*x3^2*x4^2+x1^12*x2^4*x3^4+x1^12*x2^4*x4^4+x1^12*x3^4*x4^4+x2^12*x3^4*x4^4-x1^14*x2^2*x3^2*x4^2,
x1^2*x2^2*x3^2*x4^18-12*x1^2*x2^2*x3^6*x4^14+22*x1^2*x2^2*x3^10*x4^10-12*x1^2*x2^2*x3^14*x4^6+x1^2*x2^2*x3^18*x4^2-12*x1^2*x2^6*x3^2*x4^14-52*x1^2*x2^6*x3^6*x4^10-52*x1^2*x2^6*x3^10*x4^6-12*x1^2*x2^6*x3^14*x4^2+22*x1^2*x2^10*x3^2*x4^10-52*x1^2*x2^10*x3^6*x4^6+22*x1^2*x2^10*x3^10*x4^2-12*x1^2*x2^14*x3^2*x4^6-12*x1^2*x2^14*x3^6*x4^2+x1^2*x2^18*x3^2*x4^2+76*x1^4*x2^4*x3^4*x4^12+36*x1^4*x2^4*x3^8*x4^8+76*x1^4*x2^4*x3^12*x4^4+2*x1^4*x2^4*x3^16+2*x1^4*x2^4*x4^16+2*x1^4*x3^4*x4^16+2*x2^4*x3^4*x4^16+36*x1^4*x2^8*x3^4*x4^8+36*x1^4*x2^8*x3^8*x4^4-2*x1^4*x2^8*x3^12-2*x1^4*x2^8*x4^12-2*x1^4*x3^8*x4^12-2*x2^4*x3^8*x4^12+76*x1^4*x2^12*x3^4*x4^4-2*x1^4*x2^12*x3^8-2*x1^4*x2^12*x4^8-2*x1^4*x3^12*x4^8-2*x2^4*x3^12*x4^8+2*x1^4*x2^16*x3^4+2*x1^4*x2^16*x4^4+2*x1^4*x3^16*x4^4+2*x2^4*x3^16*x4^4-12*x1^6*x2^2*x3^2*x4^14-52*x1^6*x2^2*x3^6*x4^10-52*x1^6*x2^2*x3^10*x4^6-12*x1^6*x2^2*x3^14*x4^2-52*x1^6*x2^6*x3^2*x4^10-8*x1^6*x2^6*x3^6*x4^6-52*x1^6*x2^6*x3^10*x4^2-52*x1^6*x2^10*x3^2*x4^6-52*x1^6*x2^10*x3^6*x4^2-12*x1^6*x2^14*x3^2*x4^2+36*x1^8*x2^4*x3^4*x4^8+36*x1^8*x2^4*x3^8*x4^4-2*x1^8*x2^4*x3^12-2*x1^8*x2^4*x4^12-2*x1^8*x3^4*x4^12-2*x2^8*x3^4*x4^12+36*x1^8*x2^8*x3^4*x4^4+36*x1^8*x2^8*x3^8+36*x1^8*x2^8*x4^8+36*x1^8*x3^8*x4^8+36*x2^8*x3^8*x4^8-2*x1^8*x2^12*x3^4-2*x1^8*x2^12*x4^4-2*x1^8*x3^12*x4^4-2*x2^8*x3^12*x4^4+22*x1^10*x2^2*x3^2*x4^10-52*x1^10*x2^2*x3^6*x4^6+22*x1^10*x2^2*x3^10*x4^2-52*x1^10*x2^6*x3^2*x4^6-52*x1^10*x2^6*x3^6*x4^2+22*x1^10*x2^10*x3^2*x4^2+76*x1^12*x2^4*x3^4*x4^4-2*x1^12*x2^4*x3^8-2*x1^12*x2^4*x4^8-2*x1^12*x3^4*x4^8-2*x2^12*x3^4*x4^8-2*x1^12*x2^8*x3^4-2*x1^12*x2^8*x4^4-2*x1^12*x3^8*x4^4-2*x2^12*x3^8*x4^4-12*x1^14*x2^2*x3^2*x4^6-12*x1^14*x2^2*x3^6*x4^2-12*x1^14*x2^6*x3^2*x4^2+2*x1^16*x2^4*x3^4+2*x1^16*x2^4*x4^4+2*x1^16*x3^4*x4^4+2*x2^16*x3^4*x4^4+x1^18*x2^2*x3^2*x4^2
};