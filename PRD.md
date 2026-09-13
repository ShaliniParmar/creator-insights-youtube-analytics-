Product Requirements Document (PRD)

 1. Product Scope
Creator Insights is an analytics product focused on helping small and growing YouTube creators make better content and publishing decisions using their existing performance data.

In Scope
* Video performance tracking
* Content category comparison
* Upload-time performance analysis
* Engagement analysis
* Subscriber growth analysis
* Interactive dashboard filtering
* Identification of high and low-performing content

 Out of Scope for MVP
* Direct YouTube account integration
* Automatic video publishing
* AI-generated content creation
* Paid advertising management
* Real-time competitor tracking

2. User Needs
Creators need a simple way to answer questions such as:

* Which videos should I learn from?
* Which content categories are performing better?
* Is my upload timing affecting performance?
* Which videos are generating subscribers?
* Which content needs improvement?

The product should answer these questions without requiring users to perform complex data analysis themselves.

 3. Functional Requirements

| ID    | Requirement                                    | Priority    |
| ----- | ---------------------------------------------- | ----------- |
| FR-01 | Display channel-level performance KPIs         | Must Have   |
| FR-02 | Allow users to filter data by content category | Must Have   |
| FR-03 | Allow users to filter data by upload hour      | Must Have   |
| FR-04 | Allow users to filter data by publish date     | Must Have   |
| FR-05 | Compare video performance using key metrics    | Must Have   |
| FR-06 | Identify top-performing videos                 | Must Have   |
| FR-07 | Analyze subscriber gains by video              | Should Have |
| FR-08 | Analyze engagement and retention patterns      | Should Have |
| FR-09 | Provide automated content recommendations      | Future      |
| FR-10 | Provide predictive upload-time recommendations | Future      |

4. Non-Functional Requirements

* Usability -The dashboard should be simple enough for a non-technical creator to understand.
* Performance-Filters and visualizations should respond quickly when users interact with the dashboard.
* Accuracy - Metrics displayed in the dashboard should be consistent with the underlying dataset and SQL analysis.
* Scalability - The product structure should allow additional creators, videos, and metrics to be incorporated in future versions.

5. User Flow
Open Dashboard → View KPIs → Apply Filters → Compare Performance → Identify Pattern → Take Content Decision
Example:Category Filter → Compare Views & Engagement → Identify Strong Category → Plan Similar Content

6. Acceptance Criteria Dashboard

* KPI values are displayed correctly.
* Users can interact with dashboard filters.
* Visualizations update when filters are applied.
* Performance metrics are clearly labelled.

 Analysis

* Users can identify high-performing videos.
* Users can compare categories.
* Users can analyze upload-hour performance.
* Users can identify videos associated with subscriber gains.

 Data

* Dashboard metrics match the underlying dataset.
* No duplicate records should distort performance metrics.
* Missing or invalid values should be handled before analysis.

7. Product Assumptions

* Users have access to historical YouTube performance data.
* The dataset contains sufficient information for meaningful comparisons.
* Creators are willing to use analytics to support content decisions.
* Initial users may have limited data-analysis knowledge.

8. Risks & Mitigation

| Risk                                             | Mitigation                                                           |
| ------------------------------------------------ | -------------------------------------------------------------------- |
| Small dataset may produce misleading patterns    | Show trends as directional insights rather than absolute conclusions |
| Missing or inconsistent data                     | Validate and clean data before analysis                              |
| Users may misinterpret correlation as causation  | Present insights as observations, not guaranteed outcomes            |
| Too many metrics may create dashboard complexity | Prioritize the most actionable KPIs                                  |

 9. MVP Release Criteria

The MVP will be considered ready when:

* Core KPIs are available
* Required filters work correctly
* Video and category analysis is available
* Upload-time analysis is available
* Dashboard metrics are validated
* Users can derive actionable content insights from the dashboard

## 10. Future Product Direction

Future versions can expand the product with:

* AI-based content recommendations
* Best upload-time prediction
* Trending topic recommendations
* Predictive performance analytics
* Automated insight generation
* YouTube API integration
