# Healthcare Interoperability Project

## Project Overview

This repository contains the work for the **Healthcare Interoperability Project**, aimed at achieving seamless data exchange between healthcare systems. This project demonstrates interoperability principles using HL7 CDA standards, CDA document transformations, XSLT workflows, and real-time API interactions. It also explores key healthcare concepts like patient care, diagnoses, treatment regimens, and medical coding.

---

## Tools and Technologies Used

### Standards
- **HL7 CDA**: Used for clinical document architecture (CDA) to standardize document structure and ensure proper patient care data exchange across systems.
- **FHIR**: Fast Healthcare Interoperability Resources, used for simplifying and improving healthcare data exchange.
- **NCPDP SCRIPT**: A standard used for the electronic exchange of prescription information in healthcare.

### Terminologies
- **ICD-10-CM**: International Classification of Diseases, 10th Edition, Clinical Modification, used for the classification of diagnoses.
- **SNOMED-CT**: Systematized Nomenclature of Medicine - Clinical Terms, used to represent clinical concepts in a standardized format.
- **RxNorm**: A standard for encoding and exchanging drug information.
- **LOINC**: Logical Observation Identifiers Names and Codes, used for representing clinical observations and laboratory results.

### Tools
- **Postman**: Used for testing and interacting with APIs to send and retrieve data between healthcare systems (such as OpenMRS).
- **Oxygen XML Editor**: Used for creating and validating CDA documents and performing XSLT transformations for data format conversions.

### Languages
- **XML**: Used for structuring healthcare data, such as CDA documents and terminology mappings.
- **XSLT**: Used for transforming XML data from one format to another (e.g., from CDA XML to JSON or other XML formats).
- **JSON**: Used for representing data in a lightweight, human-readable format, commonly used in APIs.

---

## Project Sprints

### 1. **Use Case Selection Details**
- **File**: `Use case selection.pdf`
- **Summary**: Defined the clinician-to-pharmacy use case, identifying key clinical concepts like diagnosis, medication, and medication history. It also detailed the mapping of these concepts to terminologies like ICD-10-CM, SNOMED-CT, and RxNorm.

### 2. **Problem Analysis and Modeling**
- **File**: `UML and BPMN.pdf`
- **Summary**: Developed UML and BPMN models to represent semantic and syntactic interoperability between clinicians, EHRs, and pharmacies. The focus was on the e-prescription workflow and ensuring smooth communication and data exchange between healthcare entities.

### 3. **CDA Entry Mockups**`
- **Files**:
  - `CDA.xml`
  - `HL 7 CDA viewer.png`
  - `cda-viewer-screenshot2.png`
- **Summary**: Created a customized CDA document that includes sections such as patient demographics, encounters, medications, and diagnoses. The document was validated using Oxygen XML Editor and displayed in an HL7 CDA viewer.

### 4. **Interoperability Pipeline**
- **Folder**: `part-4-interoperability-pipeline`
- **Files**:
  - `PS4_WORD DOCUMENT.docx`
  - `PS4-XSLTS.docx`
  - `PS4MEDICATIONS.xsl`
  - `PS4PROBLEMS.xsl`
  - `PS4VITALSIGNS.xsl`
- **Summary**: Implemented XSLT transformations to convert CDA data into formats compatible with OpenMRS systems. The interoperability pipeline ensured the smooth exchange of data between different healthcare systems by transforming XML data into standardized formats.

---

## Terminology Project Demo

- **Folder**: `part-5-terminology-demo`
- **Files**:
  - `encounter-system-a-final.xsl`
  - `med-order-system-a-telmisartan.xsl`
  - `med-order-system-a-atenolol.xsl`
  - `patient-details-system-a-final.xsl`
  - `systemb-telmisartan-final.xsl`
  - `systemb-atenolol.xsl`
  - `ncpdp-new-rx-example.xml`
  - `ps3-validated.xml`
- **Summary**: 
  - **System A to System B (OpenMRS to OpenMRS)**: Posted JSON data from one OpenMRS system to another using REST API and validated updates in the system.
  - **System B to System A (OpenMRS to OpenMRS)**: Transformed retrieved data into XML and ensured that the message exchange adhered to NCPDP standards.

---

## How to Run

### 1. View CDA Documents:
Open the CDA documents using Oxygen XML Editor or any HL7 CDA Viewer.
- Open `annotated-complete-cda.xml` or `final-customized-cda.xml`.

### 2. Test XSLT Transformations:
Run XSLT files located in `part-4-interoperability-pipeline` using Oxygen XML Editor or an XSLT processor (e.g., Saxon).

- Files:
  - `encounter-system-a-final.xsl`
  - `med-order-system-a-telmisartan.xsl`
  - `med-order-system-a-atenolol.xsl`
  - `patient-details-system-a-final.xsl`

### 3. API Interactions:
- Use Postman to POST JSON payloads to **System A (OpenMRS)** and verify updates.
- Validate **System B** XML transformations and ensure the NCPDP standards are met for interoperability.

---

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

### Citations:
- Aggarwal, V. (2002). The application of the unified modeling language in object-oriented analysis of healthcare information systems. *Journal of Medical Systems*, 26, 383–397.  
- Kassim, S. A., Gartner, J.-B., Labbé, L., et al. (2022). Benefits and limitations of business process model notation in modelling patient healthcare trajectory: a scoping review protocol. *BMJ Open*, 12(5).  
- Wright, G. (2022). What is Business Process Modeling Notation (BPMN)? TechTarget.

---

This **README.md** follows the format with side headings as per your instructions, ensuring that the content is drawn directly from the files you've provided. Let me know if there are any further changes you'd like!
