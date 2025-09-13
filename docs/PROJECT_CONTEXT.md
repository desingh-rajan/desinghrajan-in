# Project Context - Desingh Rajan Portfolio & Business Platform

## 🏢 Project Overview

**Project Name:** Desingh Rajan Portfolio & Business Platform  
**Type:** Full-stack web application  
**Current Phase:** Phase 1 - Portfolio Foundation  
**Owner:** Desingh Rajan  
**Domain:** desinghrajan.in (GoDaddy)  
**Infrastructure:** Vultr VPS (1GB RAM, 1vCPU, Ubuntu 24.04)  
**Server Setup:** Nginx + SSL configured  

## 🎯 Vision Statement

Transform from a personal portfolio website into a comprehensive business management platform that handles client relationships, project management, domain/hosting services, and financial operations.

## 🛠️ Current Tech Stack

### Core Framework

- **Framework:** Ruby on Rails 8+ (latest stable)
- **Language:** Ruby 3.3+ (latest stable)  
- **Database:** SQLite (development AND production)
- **Frontend:** HTML/ERB templates with Hotwire (Turbo + Stimulus)
- **Styling:** Tailwind CSS with Rails asset pipeline
- **Forms:** Rails form helpers with built-in validations

### Rails Features

- **Authentication:** Rails 8 built-in authentication (no gems needed!)
- **Background Jobs:** Solid Queue (SQLite-based, no Redis needed)
- **Caching:** Solid Cache (SQLite-based) or Rails default
- **File Storage:** Active Storage with local storage
- **Email:** Action Mailer with SendGrid/Mailgun  
- **Testing:** RSpec + Capybara

### DevOps & Tools

- **Deployment:** Docker on Vultr VPS (or Kamal 2.0 for easier deployment)
- **Web Server:** Nginx + Puma  
- **Version Control:** Git + GitHub
- **Code Quality:** RuboCop + Brakeman (security)
- **Package Manager:** Bundler (gems)
- **Process Management:** Docker Compose or Kamal

## 📋 Current Development Preferences

### Code Style

- Ruby conventions: snake_case for variables/methods, PascalCase for classes
- Rails conventions: RESTful routes, MVC pattern
- Clean, readable code with proper indentation
- Descriptive method and variable names
- Conventional commits for git messages

### File Structure

```ruby
app/
├── controllers/         # Request handling and business logic
├── models/             # Data models and business logic
├── views/              # HTML templates (ERB)
│   ├── layouts/        # Application layouts
│   └── shared/         # Partial templates
├── helpers/            # View helper methods
├── jobs/               # Background jobs
├── mailers/            # Email templates and logic
└── assets/
    ├── stylesheets/    # Tailwind CSS and custom styles
    ├── javascript/     # Stimulus controllers
    └── images/         # Static images

config/
├── routes.rb           # URL routing
├── database.yml        # Database configuration
└── application.rb      # App configuration

db/
├── migrate/            # Database migrations
└── seeds.rb           # Sample data
```

### Naming Conventions

- **Files:** snake_case for all files
- **Variables:** snake_case
- **Methods:** snake_case
- **Classes:** PascalCase
- **Constants:** UPPER_SNAKE_CASE
- **Database tables:** plural, snake_case (users, blog_posts)

## 🎨 Design System

### Color Palette

- **Primary:** Blue gradient (#3B82F6 to #1D4ED8)
- **Secondary:** Purple accent (#8B5CF6)
- **Neutral:** Gray scale (#F8FAFC to #0F172A)
- **Success:** Green (#10B981)
- **Warning:** Amber (#F59E0B)
- **Error:** Red (#EF4444)

### Typography

- **Headings:** Inter font family
- **Body:** Inter font family
- **Code:** JetBrains Mono

### Components Style

- Modern, clean design
- Subtle shadows and rounded corners
- Smooth animations and transitions
- Mobile-first responsive approach

## 🚀 Feature Development Guidelines

### Priority System

- **High:** Core functionality, security, performance
- **Medium:** User experience improvements, nice-to-have features
- **Low:** Experimental features, advanced integrations

### Development Workflow

1. Create feature branch from `main`
2. Implement feature with tests
3. Update documentation
4. Create pull request
5. Code review and merge

### Testing Strategy

- Unit tests for utilities and hooks
- Component tests for UI components
- Integration tests for API routes
- E2E tests for critical user flows

## 📊 Business Context

### Target Audience

- **Primary:** Potential clients looking for web development services
- **Secondary:** Existing clients accessing their project information
- **Tertiary:** Developers and peers in the industry

### Revenue Streams (Future)

- Web development services
- Domain registration and management
- Hosting services
- Maintenance and support contracts
- Digital product sales

### Key Metrics to Track

- Website traffic and conversion rates
- Client acquisition and retention
- Project completion rates
- Revenue per client
- Customer satisfaction scores

## 🔐 Security Considerations

### Current Requirements

- HTTPS enforcement
- Input validation and sanitization
- XSS protection
- CSRF protection

### Future Requirements

- Multi-factor authentication
- Role-based access control
- Data encryption at rest
- Regular security audits
- GDPR compliance

## 📱 Responsive Design Breakpoints

- **Mobile:** 320px - 767px
- **Tablet:** 768px - 1023px
- **Desktop:** 1024px - 1439px
- **Large Desktop:** 1440px+

## 🌐 SEO Strategy

### Technical SEO

- Server-side rendering with Rails (native HTML)
- Optimized meta tags and structured data
- Sitemap generation with sitemap_generator gem
- Fast page loads with Turbo navigation

### Content SEO

- Regular blog posts about web development
- Case studies of completed projects
- Technical tutorials and insights
- Industry trend analysis

## 📞 Contact Information

**Developer:** Desingh Rajan  
**Email:** [Your email]  
**Location:** [Your location]  
**Timezone:** [Your timezone]  

## 📝 Quick Reference Commands

### Development

```bash
bin/rails server     # Start development server
bin/rails console    # Rails console (REPL)
bin/rails test       # Run test suite
rubocop              # Ruby linter
bin/rails db:migrate # Run database migrations
bin/rails db:seed    # Seed database with sample data
```

### Feature Request Format

```
PHASE: [1-6]
FEATURE: [Feature name]
PRIORITY: [High/Medium/Low]
DESCRIPTION: [Brief description]
```

---

**Last Updated:** September 11, 2025  
**Current Version:** Phase 1 - Portfolio Foundation
