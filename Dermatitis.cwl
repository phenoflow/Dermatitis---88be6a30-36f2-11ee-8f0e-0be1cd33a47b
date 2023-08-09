cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  eczematoid-dermatitis-atopccontactotherunspecified---primary:
    run: eczematoid-dermatitis-atopccontactotherunspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  dermatitis-atopccontactotherunspecified---primary:
    run: dermatitis-atopccontactotherunspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: eczematoid-dermatitis-atopccontactotherunspecified---primary/output
  eyelid-dermatitis-atopccontactotherunspecified---primary:
    run: eyelid-dermatitis-atopccontactotherunspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: dermatitis-atopccontactotherunspecified---primary/output
  infective-dermatitis-atopccontactotherunspecified---primary:
    run: infective-dermatitis-atopccontactotherunspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: eyelid-dermatitis-atopccontactotherunspecified---primary/output
  pustular-dermatitis-atopccontactotherunspecified---primary:
    run: pustular-dermatitis-atopccontactotherunspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: infective-dermatitis-atopccontactotherunspecified---primary/output
  dermatitis-atopccontactotherunspecified-infected---primary:
    run: dermatitis-atopccontactotherunspecified-infected---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: pustular-dermatitis-atopccontactotherunspecified---primary/output
  dermatitis-atopccontactotherunspecified-pityriasis---primary:
    run: dermatitis-atopccontactotherunspecified-pityriasis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: dermatitis-atopccontactotherunspecified-infected---primary/output
  dermatitis-atopccontactotherunspecified-prurigo---primary:
    run: dermatitis-atopccontactotherunspecified-prurigo---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: dermatitis-atopccontactotherunspecified-pityriasis---primary/output
  dermatitis-atopccontactotherunspecified-neurodermatitis---primary:
    run: dermatitis-atopccontactotherunspecified-neurodermatitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: dermatitis-atopccontactotherunspecified-prurigo---primary/output
  discoid-dermatitis-atopccontactotherunspecified---primary:
    run: discoid-dermatitis-atopccontactotherunspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: dermatitis-atopccontactotherunspecified-neurodermatitis---primary/output
  contact---primary:
    run: contact---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: discoid-dermatitis-atopccontactotherunspecified---primary/output
  dermatitis-atopccontactotherunspecified-grease---primary:
    run: dermatitis-atopccontactotherunspecified-grease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: contact---primary/output
  solvent-dermatitis-atopccontactotherunspecified---primary:
    run: solvent-dermatitis-atopccontactotherunspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: dermatitis-atopccontactotherunspecified-grease---primary/output
  dermatitis-atopccontactotherunspecified-medicament---primary:
    run: dermatitis-atopccontactotherunspecified-medicament---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: solvent-dermatitis-atopccontactotherunspecified---primary/output
  dermatitis-atopccontactotherunspecified-product---primary:
    run: dermatitis-atopccontactotherunspecified-product---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: dermatitis-atopccontactotherunspecified-medicament---primary/output
  adhesive-dermatitis-atopccontactotherunspecified---primary:
    run: adhesive-dermatitis-atopccontactotherunspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: dermatitis-atopccontactotherunspecified-product---primary/output
  chemical-dermatitis-atopccontactotherunspecified---primary:
    run: chemical-dermatitis-atopccontactotherunspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: adhesive-dermatitis-atopccontactotherunspecified---primary/output
  dermatitis-atopccontactotherunspecified-plantar---primary:
    run: dermatitis-atopccontactotherunspecified-plantar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: chemical-dermatitis-atopccontactotherunspecified---primary/output
  allergic-dermatitis-atopccontactotherunspecified---primary:
    run: allergic-dermatitis-atopccontactotherunspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: dermatitis-atopccontactotherunspecified-plantar---primary/output
  dermatitis-atopccontactotherunspecified-cosmetics---primary:
    run: dermatitis-atopccontactotherunspecified-cosmetics---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: allergic-dermatitis-atopccontactotherunspecified---primary/output
  dermatitis-atopccontactotherunspecified-irritant---primary:
    run: dermatitis-atopccontactotherunspecified-irritant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: dermatitis-atopccontactotherunspecified-cosmetics---primary/output
  dermatitis-atopccontactotherunspecified-agent---primary:
    run: dermatitis-atopccontactotherunspecified-agent---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: dermatitis-atopccontactotherunspecified-irritant---primary/output
  dermatitis-atopccontactotherunspecified-weather---primary:
    run: dermatitis-atopccontactotherunspecified-weather---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: dermatitis-atopccontactotherunspecified-agent---primary/output
  dermatitis-atopccontactotherunspecified-ingestion---primary:
    run: dermatitis-atopccontactotherunspecified-ingestion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: dermatitis-atopccontactotherunspecified-weather---primary/output
  dermatitis-atopccontactotherunspecified-eruption---primary:
    run: dermatitis-atopccontactotherunspecified-eruption---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: dermatitis-atopccontactotherunspecified-ingestion---primary/output
  dermatitis-atopccontactotherunspecified-lichenification---primary:
    run: dermatitis-atopccontactotherunspecified-lichenification---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: dermatitis-atopccontactotherunspecified-eruption---primary/output
  dermatitis-atopccontactotherunspecified-simplex---primary:
    run: dermatitis-atopccontactotherunspecified-simplex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: dermatitis-atopccontactotherunspecified-lichenification---primary/output
  dermatitis-atopccontactotherunspecified-dyshidrosis---primary:
    run: dermatitis-atopccontactotherunspecified-dyshidrosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: dermatitis-atopccontactotherunspecified-simplex---primary/output
  dermatitis-atopccontactotherunspecified-cheiropompholyx---primary:
    run: dermatitis-atopccontactotherunspecified-cheiropompholyx---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: dermatitis-atopccontactotherunspecified-dyshidrosis---primary/output
  dermatitis-atopccontactotherunspecified-podopompholyx---primary:
    run: dermatitis-atopccontactotherunspecified-podopompholyx---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: dermatitis-atopccontactotherunspecified-cheiropompholyx---primary/output
  specified---primary:
    run: specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: dermatitis-atopccontactotherunspecified-podopompholyx---primary/output
  dermatitis-atopccontactotherunspecified---secondary:
    run: dermatitis-atopccontactotherunspecified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: specified---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: dermatitis-atopccontactotherunspecified---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
