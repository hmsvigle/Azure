2. Azure AI Vision:
	2.1 Deploy
	2.2 Connect 
	2.3 Image Analysis
		* Scan Images
		* Identify Objects/Person
		* OCR (Optical Character Recognition) - Text identify
		* Face Detection (Expressions)
		* Face Services 
		ex:
			- Medical report analysis
			- Retail/E-commerce reports scan, product identification
			- Crop Health from video analysis
			- Captions & Tagging
			- Privacy (blurr images)
			- Any Improvement/Feature implementation with
	2.4 Image Analysis with AI Visions Service
		* Analyse AI Overview - extract all relevant info from image
			- Tag
			- Caption
			- Objects 
			- Text
			- Visual features
		* Visual features Enum:
			- Enable/Disable specific feature (as above)
		* Integrate AI Vision services with SKD / Rest API 
		* OCR with Azure AI Vision Service:
			- Vision Read: signs, labels, smaller text content
			- Document Intelegence: Complex documents (Large content, pdf,docs)
			- JSON based o/p:
			- HigherArchial Text Data:
		* Face Detection with AI Vision Service:
			- Face Detection
			- Attribute Analysis - Identify facial features
			- Facial landmark Detection - Small uniq facial features 
			- Facial comparision (Special Permission needed)
			- Facial Recognition & Identification : 
				* Match with available Database (Special Permission needed)
			- Facial Liveness Detection 
			
			- usecases: Apps, Banking/Finance, criminal investigations , Social media, Airport security
		
		* Image Analys 			vs face Service
		 - Identify Person   	| - Identify Person in the image 
		 - Detect people & provide Location only| - extracts facial features, pose estimation, landmarks, expressions & Recognition ability 
		 - Simple Analysis		| Deep face analysis
		* Usecase: 
			- Image Analyis  		--> Face Service 
			(identify Person)		(Location
									 Attributes
									 Head Pose
									 Identification & Compare faces
									 Landmarks
									 Recognition unique individual)
		* Capabilities with Detected face identification:
			- Face Verification (compares & Confirm)
			- Similar faces ()
			- Persisted face recognition (Train Model with facial data)
		* 1:1 Comparison of face can be done
		* 1:N Identification - Enable Face Group
