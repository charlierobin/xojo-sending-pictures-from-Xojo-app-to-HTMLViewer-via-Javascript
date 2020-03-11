#tag Class
Protected Class SelectPictureFileDialog
Inherits OpenFileDialog
	#tag Method, Flags = &h0
		Sub Constructor()
		  #if not TargetLinux then
		    
		    me.InitialFolder = SpecialFolder.Documents
		    
		  #else 
		    
		    me.InitialFolder = SpecialFolder.Home
		    
		  #endif
		  
		  me.Title = "Select a picture"
		  
		  me.Filter = Acceptable.All
		  
		  super.Constructor()
		  
		End Sub
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
