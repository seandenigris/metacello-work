tests
testIssue283a
  "https://github.com/dalehenrich/metacello-work/issues/283"

  | project wc |
  gofer version: 'ConfigurationOfProjectIssue283-dkh.1'.
  gofer metacelloLoad.
  project := (Smalltalk at: #'ConfigurationOfProjectIssue283') project.
  (project version: '2.0') load.
  wc := (GoferPackageReference name: 'GoferFoo') workingCopy.
  self assert: wc ancestry ancestors first name = 'GoferFoo-lr.2'