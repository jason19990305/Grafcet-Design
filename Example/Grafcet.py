class Main():
	def __init__(self):
		self.X0 = self.X20 = self.X220 = self.X230 = 1
		self.X1 = self.X2 = self.X21 = self.X22 = self.X221 = self.X222 = self.X223 = self.X224 = self.X23 = self.X231 = self.X232 = self.X233 = self.X234 = self.X235 = self.X24 = self.X3 = self.X4 = self.X5 = self.X6 = 1
		print("X0 = %d,X1 = %d,X2 = %d,X3 = %d,X4 = %d,X5 = %d,X6 = %d"%(self.X0 ,self.X1 ,self.X2 ,self.X3 ,self.X4 ,self.X5 ,self.X6 ))
		while(True):
			self.datapath0()
			self.grafcet0()
			print("X0 = %d,X1 = %d,X2 = %d,X3 = %d,X4 = %d,X5 = %d,X6 = %d"%(self.X0 ,self.X1 ,self.X2 ,self.X3 ,self.X4 ,self.X5 ,self.X6 ))
	def grafcet0(self):

		if self.X0 == 1 and R0:
			self.X0 = 0
			self.X1 = 1
			return


		if self.X1 == 1 and R1:
			self.X1 = 0
			self.X2 = 1
			return


		if self.X2 == 1 and X24:
			self.X2 = 0
			self.X3 = 1
			self.X4 = 1
			return

		if self.X3 == 1 and self.X5 == 1 :
			self.X3 = 0
			self.X5 = 0
			self.X6 = 1
			return

		if self.X4 == 1 and R4:
			self.X4 = 0
			self.X5 = 1
			return


		if self.X6 == 1 and R6:
			self.X6 = 0
			self.X0 = 1
			return

	def grafcet2(self):

		if self.X20 == 1 and X2:
			self.X20 = 0
			self.X21 = 1
			return


		if self.X21 == 1 and R21:
			self.X21 = 0
			self.X22 = 1
			return


		if self.X22 == 1 and X224:
			self.X22 = 0
			self.X23 = 1
			return


		if self.X23 == 1 and X235:
			self.X23 = 0
			self.X24 = 1
			return


		if self.X24 == 1 and 1:
			self.X24 = 0
			self.X20 = 1
			return

	def grafcet22(self):

		if self.X220 == 1 and R220:
			self.X220 = 0
			self.X221 = 1
			return


		if self.X221 == 1 and R221:
			self.X221 = 0
			self.X222 = 1
			return


		if self.X222 == 1 and R222:
			self.X222 = 0
			self.X223 = 1
			return


		if self.X223 == 1 and R223:
			self.X223 = 0
			self.X224 = 1
			return


		if self.X224 == 1:
			if x<0:
				self.X224 = 0
				self.X220 = 1
			elif x>=0:
				self.X224 = 0
				self.X222 = 1
			return
	def grafcet23(self):

		if self.X230 == 1 and X23:
			self.X230 = 0
			self.X231 = 1
			return


		if self.X231 == 1:
			if R231_1:
				self.X231 = 0
				self.X232 = 1
			elif R231_2:
				self.X231 = 0
				self.X234 = 1
			return

		if self.X232 == 1 and R232:
			self.X232 = 0
			self.X233 = 1
			return


		if self.X233 == 1 and R233:
			self.X233 = 0
			self.X235 = 1
			return
		if self.X234 == 1 and R234:
			self.X234 = 0
			self.X235 = 1
			return

		if self.X235 == 1 and 1:
			self.X235 = 0
			self.X230 = 1
			return

	def datapath0(self):
		if self.X0 == 1:
			self.action0()
		if self.X1 == 1:
			self.action1()
		if self.X2 == 1:
			self.action2()
		if self.X3 == 1:
			self.action3()
		if self.X4 == 1:
			self.action4()
		if self.X5 == 1:
			self.action5()
		if self.X6 == 1:
			self.action6()
	def datapath2(self):
		if self.X20 == 1:
			self.action20()
		if self.X21 == 1:
			self.action21()
		if self.X22 == 1:
			self.action22()
		if self.X23 == 1:
			self.action23()
		if self.X24 == 1:
			self.action24()
	def datapath22(self):
		if self.X220 == 1:
			self.action220()
		if self.X221 == 1:
			self.action221()
		if self.X222 == 1:
			self.action222()
		if self.X223 == 1:
			self.action223()
		if self.X224 == 1:
			self.action224()
	def datapath23(self):
		if self.X230 == 1:
			self.action230()
		if self.X231 == 1:
			self.action231()
		if self.X232 == 1:
			self.action232()
		if self.X233 == 1:
			self.action233()
		if self.X234 == 1:
			self.action234()
		if self.X235 == 1:
			self.action235()
	def action0(self):
		print("action0 activate !!\n")
	def action1(self):
		print("action1 activate !!\n")
	def action2(self):
		print("action2 activate !!\n")
		self.datapath2()
		self.grafcet2()
		print("X20 = %d,X21 = %d,X22 = %d,X23 = %d,X24 = %d"%(self.X20,self.X21,self.X22,self.X23,self.X24))
	def action3(self):
		print("action3 activate !!\n")
	def action4(self):
		print("action4 activate !!\n")
	def action5(self):
		print("action5 activate !!\n")
	def action6(self):
		print("action6 activate !!\n")
	def action20(self):
		print("action20 activate !!\n")
	def action21(self):
		print("action21 activate !!\n")
	def action22(self):
		print("action22 activate !!\n")
		self.datapath22()
		self.grafcet22()
		print("X220 = %d,X221 = %d,X222 = %d,X223 = %d,X224 = %d"%(self.X220,self.X221,self.X222,self.X223,self.X224))
	def action23(self):
		print("action23 activate !!\n")
		self.datapath23()
		self.grafcet23()
		print("X230 = %d,X231 = %d,X232 = %d,X233 = %d,X234 = %d,X235 = %d"%(self.X230,self.X231,self.X232,self.X233,self.X234,self.X235))
	def action24(self):
		print("action24 activate !!\n")
	def action220(self):
		print("action220 activate !!\n")
	def action221(self):
		print("action221 activate !!\n")
	def action222(self):
		print("action222 activate !!\n")
	def action223(self):
		print("action223 activate !!\n")
	def action224(self):
		print("action224 activate !!\n")
	def action230(self):
		print("action230 activate !!\n")
	def action231(self):
		print("action231 activate !!\n")
	def action232(self):
		print("action232 activate !!\n")
	def action233(self):
		print("action233 activate !!\n")
	def action234(self):
		print("action234 activate !!\n")
	def action235(self):
		print("action235 activate !!\n")
if __name__ == '__main':
	Main()