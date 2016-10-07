`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Vartik Patel
// Roll No: 201501077
// 
// Create Date:    11:55:32 10/06/2016  
// Design Name: 
// Module Name:    
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Inverse(a00,a01,a02,a03,a04,a10,a11,a12,a13,a14,a20,a21,a22,a23,a24,a30,a31,a32,a33,a34,a40,a41,a42,a43,a44,
				b00,b01,b02,b03,b04,b10,b11,b12,b13,b14,b20,b21,b22,b23,b24,b30,b31,b32,b33,b34,b40,b41,b42,b43,b44,
				i00,i01,i02,i03,i04,i10,i11,i12,i13,i14,i20,i21,i22,i23,i24,i30,i31,i32,i33,i34,i40,i41,i42,i43,i44);
				
input [31:0] a00,a01,a02,a03,a04,a10,a11,a12,a13,a14,a20,a21,a22,a23,a24,a30,a31,a32,a33,a34,a40,a41,a42,a43,a44,
				b00,b01,b02,b03,b04,b10,b11,b12,b13,b14,b20,b21,b22,b23,b24,b30,b31,b32,b33,b34,b40,b41,b42,b43,b44;
output [31:0] i00,i01,i02,i03,i04,i10,i11,i12,i13,i14,i20,i21,i22,i23,i24,i30,i31,i32,i33,i34,i40,i41,i42,i43,i44;

wire [31:0] v00,v01,v02,v03,v04,v10,v11,v12,v13,v14,v20,v21,v22,v23,v24,v30,v31,v32,v33,v34,v40,v41,v42,v43,v44;
wire [31:0] w00,w01,w02,w03,w04,w10,w11,w12,w13,w14,w20,w21,w22,w23,w24,w30,w31,w32,w33,w34,w40,w41,w42,w43,w44;
wire [31:0] x00,x01,x02,x03,x04,x10,x11,x12,x13,x14,x20,x21,x22,x23,x24,x30,x31,x32,x33,x34,x40,x41,x42,x43,x44;
wire [31:0] y00,y01,y02,y03,y04,y10,y11,y12,y13,y14,y20,y21,y22,y23,y24,y30,y31,y32,y33,y34,y40,y41,y42,y43,y44;
wire [31:0] z00,z01,z02,z03,z04,z10,z11,z12,z13,z14,z20,z21,z22,z23,z24,z30,z31,z32,z33,z34,z40,z41,z42,z43,z44;
 
wire [31:0] j00,j01,j02,j03,j04,j10,j11,j12,j13,j14,j20,j21,j22,j23,j24,j30,j31,j32,j33,j34,j40,j41,j42,j43,j44;
wire [31:0] k00,k01,k02,k03,k04,k10,k11,k12,k13,k14,k20,k21,k22,k23,k24,k30,k31,k32,k33,k34,k40,k41,k42,k43,k44;
wire [31:0] l00,l01,l02,l03,l04,l10,l11,l12,l13,l14,l20,l21,l22,l23,l24,l30,l31,l32,l33,l34,l40,l41,l42,l43,l44;
wire [31:0] m00,m01,m02,m03,m04,m10,m11,m12,m13,m14,m20,m21,m22,m23,m24,m30,m31,m32,m33,m34,m40,m41,m42,m43,m44;
wire [31:0] n00,n01,n02,n03,n04,n10,n11,n12,n13,n14,n20,n21,n22,n23,n24,n30,n31,n32,n33,n34,n40,n41,n42,n43,n44;
	  
wire [31:0] d1;

division inst1(a10,a00,d1); 
assign j10 = a10 - d1*a00;
assign j11 = a11 - d1*a01;
assign j12 = a12 - d1*a02;
assign j13 = a13 - d1*a03;
assign j14 = a14 - d1*a04;

assign v10 = b10 - d1*b00;
assign v11 = b11 - d1*b01;
assign v12 = b12 - d1*b02;
assign v13 = b13 - d1*b03;
assign v14 = b14 - d1*b04;
/////////////////////////////////////////////////
wire [31:0] d2;

division inst2(a20,a00,d2);
assign j20 = a20 - d2*a00;
assign j21 = a21 - d2*a01;
assign j22 = a22 - d2*a02;
assign j23 = a23 - d2*a03;
assign j24 = a24 - d2*a04;

assign v20 = b20 - d2*b00;
assign v21 = b21 - d2*b01;
assign v22 = b22 - d2*b02;
assign v23 = b23 - d2*b03;
assign v24 = b24 - d2*b04;
/////////////////////////////////////////////////
wire [31:0] d3;

division inst3(a30,a00,d3);
assign j30 = a30 - d3*a00;
assign j31 = a31 - d3*a01;
assign j32 = a32 - d3*a02;
assign j33 = a33 - d3*a03;
assign j34 = a34 - d3*a04;

assign v30 = b30 - d3*b00;
assign v31 = b31 - d3*b01;
assign v32 = b32 - d3*b02;
assign v33 = b33 - d3*b03;
assign v34 = b34 - d3*b04;
/////////////////////////////////////////////////
wire [31:0] d4;

division inst4(a40,a00,d4);
assign j40 = a40 - d4*a00;
assign j41 = a41 - d4*a01;
assign j42 = a42 - d4*a02;
assign j43 = a43 - d4*a03;
assign j44 = a44 - d4*a04;

assign v40 = b40 - d4*b00;
assign v41 = b41 - d4*b01;
assign v42 = b42 - d4*b02;
assign v43 = b43 - d4*b03;
assign v44 = b44 - d4*b04;
/////////////////////////////////////////////////
division inst5(a00,a00,j00);
division inst6(a01,a00,j01);
division inst7(a02,a00,j02);
division inst8(a03,a00,j03);
division inst9(a04,a00,j04);

division ins5(b00,a00,v00);
division ins6(b01,a00,v01);
division ins7(b02,a00,v02);
division ins8(b03,a00,v03);
division ins9(b04,a00,v04);
/////////////////////////////////////////////////
wire [31:0] d5;

division inst10(j21,j11,d5);
assign k20 = j20 - d5*j10;
assign k21 = j21 - d5*j11;
assign k22 = j22 - d5*j12;
assign k23 = j23 - d5*j13;
assign k24 = j24 - d5*j14;

assign w20 = v20 - d5*v10;
assign w21 = v21 - d5*v11;
assign w22 = v22 - d5*v12;
assign w23 = v23 - d5*v13;
assign w24 = v24 - d5*v14;
/////////////////////////////////////////////////
wire [31:0] d6;

division inst11(j31,j11,d6);
assign k30 = j30 - d6*j10;
assign k31 = j31 - d6*j11;
assign k32 = j32 - d6*j12;
assign k33 = j33 - d6*j13;
assign k34 = j34 - d6*j14;

assign w30 = v30 - d6*v10;
assign w31 = v31 - d6*v11;
assign w32 = v32 - d6*v12;
assign w33 = v33 - d6*v13;
assign w34 = v34 - d6*v14;
/////////////////////////////////////////////////
wire [31:0] d7;

division inst12(j41,j11,d7);
assign k40 = j40 - d7*j10;
assign k41 = j41 - d7*j11;
assign k42 = j42 - d7*j12;
assign k43 = j43 - d7*j13;
assign k44 = j44 - d7*j14;

assign w40 = v40 - d7*v10;
assign w41 = v41 - d7*v11;
assign w42 = v42 - d7*v12;
assign w43 = v43 - d7*v13;
assign w44 = v44 - d7*v14;
/////////////////////////////////////////////////
division inst13(j10,j11,k10);
division inst14(j11,j11,k11);
division inst15(j12,j11,k12);
division inst16(j13,j11,k13);
division inst17(j14,j11,k14);

division ins13(v10,j11,w10);
division ins14(v11,j11,w11);
division ins15(v12,j11,w12);
division ins16(v13,j11,w13);
division ins17(v14,j11,w14);
/////////////////////////////////////////////////
wire [31:0] d8;

division inst18(k32,k22,d8);
assign l30 = k30 - d8*k20;
assign l31 = k31 - d8*k21;
assign l32 = k32 - d8*k22;
assign l33 = k33 - d8*k23;
assign l34 = k34 - d8*k24;

assign x30 = w30 - d8*w20;
assign x31 = w31 - d8*w21;
assign x32 = w32 - d8*w22;
assign x33 = w33 - d8*w23;
assign x34 = w34 - d8*w24;
/////////////////////////////////////////////////
wire [31:0] d9;

division inst19(k42,k22,d9);
assign l40 = k40 - d9*k20;
assign l41 = k41 - d9*k21;
assign l42 = k42 - d9*k22;
assign l43 = k43 - d9*k23;
assign l44 = k44 - d9*k24;

assign x40 = w40 - d9*w20;
assign x41 = w41 - d9*w21;
assign x42 = w42 - d9*w22;
assign x43 = w43 - d9*w23;
assign x44 = w44 - d9*w24;
/////////////////////////////////////////////////
division inst20(k20,k22,l20);
division inst21(k21,k22,l21);
division inst22(k22,k22,l22);
division inst23(k23,k22,l23);
division inst24(k24,k24,l24);

division ins20(w20,k22,x20);
division ins21(w21,k22,x21);
division ins22(w22,k22,x22);
division ins23(w23,k22,x23);
division ins24(w24,k24,x24);
/////////////////////////////////////////////////
wire [31:0] d10;

division inst25(l43,l33,d10);
assign m40 = l40 - d10*l30;
assign m41 = l41 - d10*l31;
assign m42 = l42 - d10*l32;
assign m43 = l43 - d10*l33;
assign m44 = l44 - d10*l34;

assign y40 = x40 - d10*x30;
assign y41 = x41 - d10*x31;
assign y42 = x42 - d10*x32;
assign y43 = x43 - d10*x33;
assign y44 = x44 - d10*x34;
/////////////////////////////////////////////////
division inst26(l30,l33,m30);
division inst27(l31,l33,m31);
division inst28(l32,l33,m32);
division inst29(l33,l33,m33);
division inst30(l34,l33,m34);

division ins26(x30,l33,y30);
division ins27(x31,l33,y31);
division ins28(x32,l33,y32);
division ins29(x33,l33,y33);
division ins30(x34,l33,y34);
/////////////////////////////////////////////////
division inst31(m40,m44,n40);
division inst32(m41,m44,n41);
division inst33(m42,m44,n42);
division inst34(m43,m44,n43);
division inst35(m44,m44,n44);

division ins31(y40,m44,z40);
division ins32(y41,m44,z41);
division ins33(y42,m44,z42);
division ins34(y43,m44,z43);
division ins35(y44,m44,z44);
/////////////////////////////////////////////////
wire [31:0] d11;

division inst36(m34,n44,d11);
assign n30 = m30 - d11*n40;
assign n31 = m31 - d11*n41;
assign n32 = m32 - d11*n42;
assign n33 = m33 - d11*n43;
assign n34 = m34 - d11*n44;

assign z30 = y30 - d11*z40;
assign z31 = y31 - d11*z41;
assign z32 = y32 - d11*z42;
assign z33 = y33 - d11*z43;
assign z34 = y34 - d11*z44;
/////////////////////////////////////////////////
wire [31:0] d12;

division inst37(l24,n44,d12);
assign n20 = l20 - d12*n40;
assign n21 = l21 - d12*n41;
assign n22 = l22 - d12*n42;
assign n23 = l23 - d12*n43;
assign n24 = l24 - d12*n44;

assign z20 = x20 - d12*z40;
assign z21 = x21 - d12*z41;
assign z22 = x22 - d12*z42;
assign z23 = x23 - d12*z43;
assign z24 = x24 - d12*z44;
/////////////////////////////////////////////////
wire [31:0] d13;

division inst38(k14,n44,d13);
assign n10 = k10 - d13*n40;
assign n11 = k11 - d13*n41;
assign n12 = k12 - d13*n42;
assign n13 = k12 - d13*n43;
assign n14 = k12 - d13*n44;

assign z10 = w10 - d13*z40;
assign z11 = w11 - d13*z41;
assign z12 = w12 - d13*z42;
assign z13 = w12 - d13*z43;
assign z14 = w12 - d13*z44;
/////////////////////////////////////////////////
wire [31:0] d14;

division inst39(j04,n44,d14);
assign n00 = j00 - d14*n40;
assign n01 = j01 - d14*n41;
assign n02 = j02 - d14*n42;
assign n03 = j03 - d14*n43;
assign n04 = j04 - d14*n44;

assign z00 = v00 - d14*z40;
assign z01 = v01 - d14*z41;
assign z02 = v02 - d14*z42;
assign z03 = v03 - d14*z43;
assign z04 = v04 - d14*z44;
/////////////////////////////////////////////////
wire [31:0] d15;

division inst40(n23,n33,d15);
assign m20 = n20 - d15*n30;
assign m21 = n21 - d15*n31;
assign m22 = n22 - d15*n32;
assign m23 = n23 - d15*n33;
assign m24 = n24 - d15*n34;

assign y20 = z20 - d15*z30;
assign y21 = z21 - d15*z31;
assign y22 = z22 - d15*z32;
assign y23 = z23 - d15*z33;
assign y24 = z24 - d15*z34;
/////////////////////////////////////////////////
wire [31:0] d16;

division inst41(n13,n33,d16);
assign m10 = n10 - d16*n30;
assign m11 = n11 - d16*n31;
assign m12 = n12 - d16*n32;
assign m13 = n13 - d16*n33;
assign m14 = n14 - d16*n34;

assign y10 = z10 - d16*z30;
assign y11 = z11 - d16*z31;
assign y12 = z12 - d16*z32;
assign y13 = z13 - d16*z33;
assign y14 = z14 - d16*z34;
/////////////////////////////////////////////////
wire [31:0] d17;

division inst42(n03,n33,d17);
assign m00 = n00 - d17*n30;
assign m01 = n01 - d17*n31;
assign m02 = n02 - d17*n32;
assign m03 = n03 - d17*n33;
assign m04 = n04 - d17*n34;

assign y00 = z00 - d17*z30;
assign y01 = z01 - d17*z31;
assign y02 = z02 - d17*z32;
assign y03 = z03 - d17*z33;
assign y04 = z04 - d17*z34;
/////////////////////////////////////////////////
wire [31:0] d18;

division inst43(m12,m22,d18);
assign l10 = m10 - d18*m20;
assign l11 = m11 - d18*m21;
assign l12 = m12 - d18*m22;
assign l13 = m13 - d18*m23;
assign l14 = m14 - d18*m24;

assign x10 = y10 - d18*y20;
assign x11 = y11 - d18*y21;
assign x12 = y12 - d18*y22;
assign x13 = y13 - d18*y23;
assign x14 = y14 - d18*y24;
/////////////////////////////////////////////////
wire [31:0] d19;

division inst44(m02,m22,d19);
assign l00 = m00 - d19*m20;
assign l01 = m01 - d19*m21;
assign l02 = m02 - d19*m22;
assign l03 = m03 - d19*m23;
assign l04 = m04 - d19*m24;

assign x00 = y00 - d19*y20;
assign x01 = y01 - d19*y21;
assign x02 = y02 - d19*y22;
assign x03 = y03 - d19*y23;
assign x04 = y04 - d19*y24;
/////////////////////////////////////////////////
wire [31:0] d20;

division inst45(l01,l11,d20);
assign k00 = l00 - d20*l10;
assign k01 = l01 - d20*l11;
assign k02 = l02 - d20*l12;
assign k03 = l03 - d20*l13;
assign k04 = l04 - d20*l14;

assign w00 = x00 - d20*x10;
assign w01 = x01 - d20*x11;
assign w02 = x02 - d20*x12;
assign w03 = x03 - d20*x13;
assign w04 = x04 - d20*x14;
/////////////////////////////////////////////////

assign i00 = w00;
assign i01 = w01;
assign i02 = w02;
assign i03 = w03;
assign i04 = w04;

assign i10 = x10;
assign i11 = x11;
assign i12 = x12;
assign i13 = x13;
assign i14 = x14;

assign i20 = y20;
assign i21 = y21;
assign i22 = y22;
assign i23 = y23;
assign i24 = y24;

assign i30 = z30;
assign i31 = z31;
assign i32 = z32;
assign i33 = z33;
assign i34 = z34;

assign i40 = z40;
assign i41 = z41;
assign i42 = z42;
assign i43 = z43;
assign i44 = z44;

endmodule

