#Solution File
	class Node
	attr_accessor :data, :ref
#create node and list
	def initialize data,ref
		@data=data
		@ref=ref
	end
	end
	
	class List 
	def initialize data
		@header=Node.new(data,nil)
	end
	def agregar(data)
		direc=@header
		while direc.ref !=nil
		direc=direc.ref
		end
		direc.ref=Node.new(data,nil)
		self
	end
	def borrar(data)
		direc=@header
		if direc.data==data
		@header=@header.ref
		else
		direc=@header
		while (direc !=nil)&&(direc.ref !=nil)&&((direc.ref).data!=data)
		direc=direc.ref
		end
		if(direc !=nil)&&(direc.ref !=nil)
		direc.ref=(direc.ref).ref
		end
		end
	end
	
#imprimir mis datos
	def imprimir
		direc=@header
		list=[]
		while direc.ref !=nil
		list= list +[direc.data.to_s]
		direc=direc.ref
		end
		list+=[direc.data.to_s]
		puts list.join(",")
	end
	end
		data =gets.chomp
		list=List.new(data)
		while data != "-1"
		data=gets.chomp
		if data != "-1"
		list.agregar(data)
		end
		end
puts list.imprimir


