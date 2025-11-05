#import "template.typ": *

#show: resume

#header(
  name: "Sebastian Vilhelm Juhl",
  title: "Senior Software Engineer",
  phone: "(+45) 30 24 41 48",
  email: "seb.vilhelm@gmail.com",
  linkedin: "linkedin.com/in/svnielsen",
  site: "github.com/sebvilhelm",
)

#resume_heading[Work experience]
#exp_item(
  "Lunar A/S",
  [
    #exp_position(
      role: "Senior Software Engineer (Squad Surveyor)",
      date: "April 2024 - Present",
      [Develop systems for Financial Crime Prevention (FCP) and operations for initial and ongoing due diligence, sanction screening, transaction monitoring, and payment screening.],
      [Took ownership of core user data domain, including ongoing automatic updates via national registries in Denmark, Norway, and Sweden.],
      [*Core technologies:* Go, PostgreSQL, event sourcing, CQRS, microservices, event-driven architecture],
    ),
    #exp_position(
      role: "Software Engineer (Squad Voyager)",
      date: "July 2021 - April 2024",
      [Primary engineer for a React app used as the key tool for customer support, back office and FCP, using GraphQL to interface with microservice back-ends.],
      [Maintain infrastructure for stitching many GraphQL servers (microservices) into a single gateway for front-end application.],
      [Adding features to back-end services in Go and Node.js (TypeScript).],
      [*Core technologies:* TypeScript, React.js, GraphQL, microservices, JavaScript build tools (Webpack, RSPack, Vite)],
    ),
  ]
)
#exp_item(
  "Zendesk",
  exp_position(
    role: "Software Engineer",
    date: "March 2019 - June 2021",
    [Part of the team building the integration a marketplace for purchasing and selling themes for Zendesk Help centers.],
    [Key in implementing accessibility improvements and WCAG2 compliance for the primary theme used by customers, without breaking their custom integrations.],
    [*Core technologies:* React.js, Ruby on Rails, GraphQL, Redux, HTML, CSS],
  )
)
#exp_item(
  "Ajukreizi Aps",
  exp_position(
    role: "Intern",
    date: "August 2018 - October 2018",
    [Developer internship, working on projects for external clients in React, Next.js, and JavaScript.],
  )
)
#exp_item(
  "Frankly A/S",
  [
    #exp_position(
      role: "Student Developer",
      date: "June 2017 - March 2018",
    ),
    #exp_position(
      role: "Intern",
      date: "January 2017 - June 2017",
      [Agency work for clients, mostly custom Wordpress solutions with lots of custom PHP, CSS and JavaScript, and also web ads in JavaScript]
    ),
  ]
)

#resume_heading[Education]
#exp_item(
  "Copenhagen School of Design and Technology (KEA)",
  [
    #exp_position(
      role: "BA in Web Development",
      date: "August 2017 - January 2019",
      [*Highlighted courses*: Databases, User Experience, Node.js, Angular]
    )
    #exp_position(
      role: "AP Graduate in Multimedia Design and Communication",
      date: "August 2015 - July 2017"
    )
  ]
)